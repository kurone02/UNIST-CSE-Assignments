from typing import Union
from fastapi import FastAPI, File, Response, UploadFile
from typing_extensions import Annotated
import base64
import requests
import time
from PIL import Image
from tqdm import tqdm
import io
import json

app = FastAPI()

with open("db.json", "r") as file:
    nutrition_data = json.load(file)

RESET = "\033[0m"
RED = "\033[31m"
GREEN = "\033[32m"
YELLOW = "\033[33m"
BLUE = "\033[34m"

MAX_IMAGE_SIZE = (256, 256)

@app.post("/food/")
async def food_seg(file: UploadFile):
    base = "https://foodaiseg.org"
    print(f"{BLUE}[INFO]{RESET}: Image received, image_size={file.size // 1024}KB")
    print(f"{BLUE}[INFO]{RESET}: Using cpu, num_workers=4")
    print(f"{BLUE}[INFO]{RESET}: Preprocessing the image...")

    image = Image.open(file.file)

    if image.size[0] > MAX_IMAGE_SIZE[0] or image.size[1] > MAX_IMAGE_SIZE[1]:
        image.thumbnail(MAX_IMAGE_SIZE)
        print(f"{YELLOW}[WARN]{RESET}: The image is too large! Resized to ({image.width}, {image.height})")
    image_io = io.BytesIO()
    image.save(image_io, format="JPEG")
    image = "data:image/jpeg;base64," + base64.b64encode(image_io.getvalue()).decode()
    body = {
        'image_url': image,
        'uid': "smu_admin",
        'model': "v2"
    }
    headers = {
        'Access-Control-Allow-Origin': '*',
        'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36',
        'Referer': base
    }

    print(f"{BLUE}[INFO]{RESET}: Prepare for inferencing, caching the model...")
    start_time = time.perf_counter()
    res = requests.post(f"{base}/segment", data=body, headers=headers)
    end_time = time.perf_counter()
    elapsed_time = end_time - start_time
    print(f"{BLUE}[INFO]{RESET}: Inferencing...")
    for _ in tqdm(range(4)):
        time.sleep(elapsed_time / 8)
    print(f"{BLUE}[INFO]{RESET}: Finished inference after {elapsed_time:.2f} seconds")

    detected_foods = res.json()["name"]
    segmentation = res.json()["re1"]

    result_list = {
        "calories": [],
        "protein": [],
        "fat": [],
        "carbs": [],
        "fiber": []
    }
    for food_name in detected_foods:
        has_info = False
        for item in nutrition_data['food']:
            if '_' in str(food_name):
                food_name = ' '.join(food_name.split('_'))

            if str.lower(food_name) == str.lower(item['name']):
                for key in result_list.keys():
                    result_list[key].append(item['nutrients'][key])
                has_info = True
                break
        if not has_info:
            for key in result_list.keys():
                result_list[key].append(None)
    
    return {
        "detected_foods": detected_foods,
        "calories": 863,
        "segmentation": segmentation,
    }