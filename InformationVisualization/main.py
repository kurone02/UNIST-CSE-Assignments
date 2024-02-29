import requests
from bs4 import BeautifulSoup
import re

BASE_URL = "https://www.anime-planet.com/anime"





top10 = ['Demon Slayer: Kimetsu no Yaiba - Entertainment District Arc',
 'Fruits Basket the Final Season',
 'Mo Dao Zu Shi 3',
 'Fullmetal Alchemist: Brotherhood',
 'Attack on Titan 3rd Season: Part II',
 'Jujutsu Kaisen',
 'Attack on Titan The Final Season: Part II',
 'Attack on Titan The Final Season',
 'Demon Slayer: Kimetsu no Yaiba Movie - Mugen Train',
 'Haikyuu!! Karasuno High School vs Shiratorizawa Academy',
 'your name.',
 'Haikyuu!! Second Season',
 'Demon Slayer: Kimetsu no Yaiba',
 'Hunter x Hunter (2011)',
 'A Silent Voice',
 'Violet Evergarden Movie',
 'Haikyuu!! To the Top: Part II',
 "Heaven Official's Blessing Special",
 'Given',
 'That Time I Got Reincarnated as a Slime Season 2',
 'Code Geass: Lelouch of the Rebellion R2',
 'Mo Dao Zu Shi 2',
 'Gintama: The Very Final',
 'Link Click',
 'Mob Psycho 100 II',
 'Haikyuu!! To the Top',
 'Spirited Away',
 'Fruits Basket 2nd Season',
 'The Promised Neverland',
 'That Time I Got Reincarnated as a Slime Season 2: Part II',
 "Heaven Official's Blessing",
 'Ranking of Kings',
 'Mushoku Tensei: Jobless Reincarnation - Part II',
 'Attack on Titan 3rd Season',
 'Gintama.',
 'Douluo Dalu 2',
 'Steins;Gate',
 'Gintama Kanketsu-hen: Yorozuya yo Eien Nare',
 'Gintama.: Shirogane no Tamashii-hen',
 'Banana Fish',
 'Mo Dao Zu Shi',
 'Clannad After Story',
 "Gintama': Enchousen",
 'Gintama.: Shirogane no Tamashii-hen 2',
 'Haikyuu!!',
 "Gintama 2011",
 'One-Punch Man',
 'Demon Slayer: Kimetsu no Yaiba - Mugen Train',
 'Gintama 2015',
 "Natsume's Book of Friends Season 6",
 "JoJo's Bizarre Adventure: Golden Wind",
 "Howl's Moving Castle",
 "JoJo's Bizarre Adventure: Stone Ocean",
 'Vinland Saga',
 "Natsume's Book of Friends Season 4",
 'Assassination Classroom 2nd Season',
 "Natsume's Book of Friends Season 5",
 'My Hero Academia 3',
 'My Hero Academia 2',
 'Wolf Children',
 'That Time I Got Reincarnated as a Slime',
 'Violet Evergarden',
 'SK8 the Infinity',
 'Hajime no Ippo: The Fighting!',
 'Code Geass: Lelouch of the Rebellion',
 'Hajime no Ippo: New Challenger',
 'Kaguya-sama: Love Is War?',
 'Haikyuu!! Tokushuu! Harukou Volley ni Kaketa Seishun',
 'Mushishi Zoku Shou 2nd Season',
 'Attack on Titan',
 'Kamisama Kiss: Kako-hen',
 "JoJo's Bizarre Adventure: Diamond is Unbreakable",
 'Yona of the Dawn: Zeno Arc',
 'JoJos Bizarre Adventure: Stardust Crusaders - Battle in Egypt',
 'BTS: We are Bulletproof - the Eternal',
 'Monogatari Series: Second Season',
 'The Disastrous Life of Saiki K. 2nd Season',
 'Hotarubi no Mori e',
 'Cowboy Bebop',
 'Horimiya',
 'Attack on Titan: No Regrets',
 'Dr. Stone',
 'Haikyuu!! Movie 4: Battle of Concepts',
 "Kuroko's Basketball 3",
 'Princess Mononoke',
 'Mushishi Zoku Shou',
 'Given Movie',
 'Rascal Does Not Dream of a Dreaming Girl',
 'I Want to Eat Your Pancreas',
 'Attack on Titan 2nd Season',
 "Natsume's Book of Friends Season 3",
 'March Comes in like a Lion 2nd Season',
 'Gintama: Porori-hen',
 'Josee, the Tiger and the Fish',
 'Haikyuu!! Movie 3: Talent and Sense',
 'Descending Stories: Shouwa Genroku Rakugo Shinjuu',
 'Rurouni Kenshin: Tsuiokuhen',
 'Made in Abyss',
 'The Rising of the Shield Hero',
 'Hajime no Ippo: Rising']

print("[")
for anime in top10:
    anime = anime.replace("-", " ")
    anime = re.sub(r":|\-|!|\(|\)|\.|'|,", "", anime.lower())
    anime = re.sub('( +)|;', ' ', anime)
    anime = anime.replace(" ", "-")

    response = requests.get(f"{BASE_URL}/{anime}")
    soup = BeautifulSoup(response.text, 'html.parser')

    # print(f"{BASE_URL}/{anime}")

    print(int(soup.find_all("div", {"class": "avgRating"})[0]["title"].split()[5].replace(',', '')), end='')
    print(",")

print("]")