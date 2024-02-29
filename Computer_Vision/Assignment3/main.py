import torch.nn as nn
from model import SegNet
from PIL import Image
import torchvision
from tqdm import tqdm
from utils import *
import cv2
from torchvision.utils import save_image
import torch.nn.functional as F
from matplotlib import pyplot as plt

class Dataset(object):
    def __init__(self, img_path, label_path, method='train'):
        self.img_path = img_path
        self.label_path = label_path
        self.train_dataset = []
        self.test_dataset = []
        self.mode = method == 'train'
        print("Preprocessing the CelebA dataset...")
        self.preprocess()
        if self.mode:
            self.num_images = len(self.train_dataset)
        else:
            self.num_images = len(self.test_dataset)

    def preprocess(self):
        for i in tqdm(range(
                len([name for name in os.listdir(self.img_path) if os.path.isfile(os.path.join(self.img_path, name))]))):
            img_path = os.path.join(self.img_path, str(i) + '.jpg')
            label_path = os.path.join(self.label_path, str(i) + '.png')
            if self.mode == True:
                self.train_dataset.append([img_path, label_path])
            else:
                self.test_dataset.append([img_path, label_path])

        print('Finished preprocessing the CelebA dataset!')

    def __getitem__(self, index):
        dataset = self.train_dataset if self.mode == True else self.test_dataset
        img_path, label_path = dataset[index]
        image = Image.open(img_path)
        label = Image.open(label_path)
        transform = torchvision.transforms.Compose(
            [torchvision.transforms.ToTensor(), torchvision.transforms.Resize((512, 512))])
        return transform(image), transform(label), img_path.split("/")[-1]

    def __len__(self):
        """Return the number of images."""
        return self.num_images


class Tester(object):
    def __init__(self, batch_size):
        self.batch_size = batch_size
        self.model = self.build_model()
        # Load of pretrained_weight file
        weight_PATH = 'my_own_weight.pth'
        self.model.load_state_dict(torch.load(weight_PATH))
        dataset = Dataset(img_path="data/test_img", label_path="data/test_label", method='test')
        self.dataloader = torch.utils.data.DataLoader(dataset=dataset,
                                                      batch_size=self.batch_size,
                                                      shuffle=True,
                                                      num_workers=2,
                                                      drop_last=False)
        print("Testing...")

    def test(self):
        make_folder("test_mask", '')
        make_folder("test_color_mask", '')
        self.model.eval()
        for data in tqdm(self.dataloader):
            imgs = data[0].cuda()
            labels_predict = self.model(imgs)
            labels_predict_plain = generate_label_plain(labels_predict, 512)
            labels_predict_color = generate_label(labels_predict, 512)
            batch_size = labels_predict.size()[0]
            for k in range(batch_size):
                cv2.imwrite(os.path.join("test_mask", data[2][k]), labels_predict_plain[k])
                save_image(labels_predict_color[k], os.path.join("test_color_mask", data[2][k]))

    def build_model(self):
        model = SegNet(3).cuda()
        return model


class Trainer(object):
    def __init__(self, epochs, batch_size, lr):
        self.epochs = epochs
        self.batch_size = batch_size
        self.learning_rate = lr
        self.model = self.build_model()
        self.optimizer = torch.optim.Adam(self.model.parameters(), self.learning_rate)
        dataset = Dataset(img_path="data/train_img", label_path="data/train_label", method='train')
        self.dataloader = torch.utils.data.DataLoader(dataset=dataset,
                                                      batch_size=self.batch_size,
                                                      shuffle=True,
                                                      num_workers=2,
                                                      drop_last=False)

        # Added code
        self.loss_fn = nn.CrossEntropyLoss()
        weight_PATH = 'pretrained_weight.pth'
        self.model.load_state_dict(torch.load(weight_PATH))
        self.plot_train = []
        self.plot_test = []

        testset = Dataset(img_path="data/test_img", label_path="data/test_label", method='test')
        self.testloader = torch.utils.data.DataLoader(dataset=testset,
                                                      batch_size=self.batch_size,
                                                      shuffle=True,
                                                      num_workers=2,
                                                      drop_last=False)

    def train_loop(self):
        train_loss = 0
        for sample in tqdm(self.dataloader):
            # Bring data to gpu
            x, y_true, _ = sample
            x = x.cuda()
            y_true = y_true.squeeze().cuda() * 255
            # Get segmentation
            self.optimizer.zero_grad()
            y_pred = self.model(x)
            # y_pred = F.softmax(y_pred, dim=1)
            # Calculate the loss
            loss = self.loss_fn(y_pred, y_true.long())
            # Update the weights
            loss.backward()
            self.optimizer.step()
            # Adding up the total loss
            train_loss += loss.item()
        # Return the average loss
        return train_loss / len(self.dataloader)

    def test_loop(self):
        test_loss = 0
        for sample in tqdm(self.testloader):
            # Bring data to gpu
            x, y_true, _ = sample
            x = x.cuda()
            y_true = y_true.squeeze().cuda() * 255
            # Get segmentation
            y_pred = self.model(x)
            # y_pred = F.softmax(y_pred, dim=1)
            # Calculate the loss and add up the total loss
            loss = self.loss_fn(y_pred, y_true.long())
            test_loss += loss.item()
        # Return the average loss
        return test_loss / len(self.testloader)

    def train(self):
        print("-" * 20, "Start training", "-" * 20)
        for epoch in range(self.epochs):
            print(f"Epoch {epoch + 1}/{self.epochs}: ")
            # Learning rate scheduler
            if epoch > 1 and epoch % 10 == 1:
                self.learning_rate *= 0.5
                self.optimizer = torch.optim.Adam(self.model.parameters(), self.learning_rate)
            # Train mode
            self.model.train()
            train_loss = self.train_loop()
            self.plot_train.append(train_loss)
            print(f"Average training loss: {train_loss:.6f}")
            # Test mode
            self.model.eval()
            with torch.no_grad():
                test_loss = self.test_loop()
                self.plot_test.append(test_loss)
                print(f"Average testing loss: {test_loss:.6f}")
            print("-" * 50)

    # To plot the loss graphs
    def plot(self):
        plt.plot(self.plot_train, label="Train loss")
        plt.plot(self.plot_test, label="Test loss")
        plt.legend(loc="upper right")
        plt.show()

    # To save the model's weights
    def save_model(self):
        torch.save(self.model.state_dict(), "my_own_weight.pth")

    def build_model(self):
        model = SegNet(3).cuda()
        return model


if __name__ == '__main__':
    # Hyperparameter
    epochs = 20
    lr = 5e-4
    batch_size = 16

    # Training
    trainer = Trainer(epochs, batch_size, lr)
    trainer.train()
    trainer.plot()
    trainer.save_model()

    # Testing
    tester = Tester(32)
    tester.test()
