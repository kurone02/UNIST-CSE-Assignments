from model import *
import torch
import numpy as np
import torchvision
import tqdm
from torch.utils.data import Dataset
from torch.utils.data import DataLoader
import cv2
import math
import torch.nn as nn
import torch.optim as optim

from glob import glob
import pandas
import matplotlib.pyplot as plt

device = 'cuda:0'
num_joints = 21

class CustomDataset(Dataset):
    def __init__(self, method=None):
        self.root = 'Obman_dataset/'
        self.x_data = []
        self.y_data = []
        if method == 'train':
            self.root = self.root + 'train/'
            self.img_path = sorted(glob(self.root + 'rgb/*.jpg'))

        elif method == 'test':
            self.root = self.root + 'test/'
            self.img_path = sorted(glob(self.root + 'rgb/*.jpg'))

        for i in tqdm.tqdm(range(len(self.img_path))):
            img = cv2.imread(self.img_path[i], cv2.IMREAD_COLOR)
            b, g, r = cv2.split(img)
            img = cv2.merge([r, g, b])
            self.x_data.append(img)

            num = self.img_path[i].split('.')[0].split('/')[-1]
            img_pkl = self.root + 'meta/' + str(num) + '.pkl'
            pkl = pandas.read_pickle(img_pkl)
            coords_2d = pkl['coords_2d']
            self.y_data.append(coords_2d)

    def __len__(self):
        return len(self.img_path)

    def __getitem__(self, idx):
        transform1 = torchvision.transforms.ToTensor()
        new_x_data = transform1(self.x_data[idx])

        return new_x_data, self.y_data[idx]

class Tester(object):
    def __init__(self, batch_size, weight_PATH="pretrained_weight.pth"):
        self.batch_size = batch_size
        self._build_model()

        self.root = 'Obman_dataset/'

        # Load of pretrained_weight file
        self.poseNet.load_state_dict(torch.load(weight_PATH))

        print("Testing...")

    def _build_model(self):
        # 2d pose estimator
        poseNet = CPM2DPose()
        self.poseNet = poseNet.to(device)

        print('Finish build model.')

    def heatmap2skeleton(self, heatmapsPoseNet):
        skeletons = np.zeros((heatmapsPoseNet.shape[0], heatmapsPoseNet.shape[1], 2))
        for m in range(heatmapsPoseNet.shape[0]):
            for i in range(heatmapsPoseNet.shape[1]):
                u, v = np.unravel_index(np.argmax(heatmapsPoseNet[m][i]), (32, 32))
                skeletons[m, i, 0] = u * 8
                skeletons[m, i, 1] = v * 8
        return skeletons

    @staticmethod
    def plot_hand(coords_hw, axis, color_fixed=None, linewidth='1'):
        colors = np.array([[0., 0., 1.],
                           [0., 0., 1.],
                           [0., 0., 1.],
                           [0., 0., 1.],
                           [1., 0., 1.],
                           [1., 0., 1.],
                           [1., 0., 1.],
                           [1., 0., 1.],
                           [1., 0., 0.],
                           [1., 0., 0.],
                           [1., 0., 0.],
                           [1., 0., 0.],
                           [0., 1., 0.],
                           [0., 1., 0.],
                           [0., 1., 0.],
                           [0., 1., 0.],
                           [1., 0.5, 0.],
                           [1., 0.5, 0.],
                           [1., 0.5, 0.],
                           [1., 0.5, 0.]])
        bones = [((1, 0), colors[0, :]),
                 ((2, 1), colors[1, :]),
                 ((3, 2), colors[2, :]),
                 ((4, 3), colors[3, :]),
                 ((0, 5), colors[4, :]),
                 ((5, 6), colors[5, :]),
                 ((6, 7), colors[6, :]),
                 ((7, 8), colors[7, :]),
                 ((0, 9), colors[8, :]),
                 ((9, 10), colors[9, :]),
                 ((10, 11), colors[10, :]),
                 ((11, 12), colors[11, :]),
                 ((0, 13), colors[12, :]),
                 ((13, 14), colors[13, :]),
                 ((14, 15), colors[14, :]),
                 ((15, 16), colors[15, :]),
                 ((0, 17), colors[16, :]),
                 ((17, 18), colors[17, :]),
                 ((18, 19), colors[18, :]),
                 ((19, 20), colors[19, :])]
        for connection, color in bones:
            coord1 = coords_hw[connection[0], :]
            coord2 = coords_hw[connection[1], :]
            coords = np.stack([coord1, coord2])
            if color_fixed is None:
                axis.plot(coords[:, 1], coords[:, 0], color=color, linewidth=linewidth)
            else:
                axis.plot(coords[:, 1], coords[:, 0], color_fixed, linewidth=linewidth)

    def test(self):
        path = self.root + 'test/rgb/106.jpg'
        pkl_path = self.root + 'test/meta/106.pkl'
        print(path)
        print(pkl_path)
        img = cv2.imread(path, cv2.IMREAD_COLOR)
        b, g, r = cv2.split(img)
        img = cv2.merge([r, g, b])
        transform1 = torchvision.transforms.ToTensor()
        x_data = transform1(img)
        pkl = pandas.read_pickle(pkl_path)
        y_test = pkl['coords_2d']

        self.poseNet.eval()

        print("Testing 106.jpg heatmap")

        heatmapsPoseNet = self.poseNet(x_data.unsqueeze(0).cuda()).cpu().detach().numpy()
        print()
        heatmap = np.transpose(heatmapsPoseNet[0], (1, 2, 0))

        plt.rcParams['figure.figsize'] = [12, 5]
        for i in range(num_joints):
            ax = plt.subplot(3, 7, i + 1)
            ax.imshow(heatmap[:, :, i])
        plt.savefig('heatmap.png')
        plt.show()

        print("Testing 106.jpg heatmap")

        ax = plt.subplot(1, 1, 1)
        ax.imshow(img)
        self.plot_hand(self.heatmap2skeleton(heatmapsPoseNet)[0], ax)
        plt.savefig('results.png') 
        plt.show()

        print(f"The error of 106.jpg is: {self.calc_error(106):.6f}")

        print()

        print("Testing 500 images...")
        test_err = self.avg_error()
        print()
        print(f"The average error of the test dataset is: {test_err:.6f}")


    ###############################
    #       ERROR FUNCTION        #
    ###############################
    def calc_error(self, img_name):
        # Find the image and pkl path
        img_path = self.root + f"test/rgb/{img_name}.jpg"
        pkl_path = self.root + f"test/meta/{img_name}.pkl"

        # Read the image
        img = cv2.imread(img_path, cv2.IMREAD_COLOR)
        b, g, r = cv2.split(img)
        img = cv2.merge([r, g, b])

        # Extract data from image
        transform1 = torchvision.transforms.ToTensor()
        x_data = transform1(img)

        # Read the ground truth
        pkl = pandas.read_pickle(pkl_path)
        y_test = pkl['coords_2d']

        # Predict the skeleton
        self.poseNet.eval()
        heatmapsPoseNet = self.poseNet(x_data.unsqueeze(0).cuda()).cpu().detach().numpy()
        y_hat = self.heatmap2skeleton(heatmapsPoseNet)[0]

        # Adding up the error
        err = 0
        for i in range(num_joints):
            # Compute the distance between y_test[i] and y_hat[i]
            err += np.linalg.norm(y_test[i] - y_hat[i])

        # Return the final error
        return err / num_joints


    ###############################
    #        AVERAGE ERROR        #
    ###############################
    def avg_error(self):
        # Compute the sum of the errors
        sum_err = 0
        for i in tqdm.tqdm(range(500)):
            sum_err += self.calc_error(i)
        
        # Return the average
        return sum_err / 500
    
class Trainer(object):
    def __init__(self, epochs, batch_size, lr):
        self.epochs = epochs
        self.batch_size = batch_size
        self.learning_rate = lr
        self._build_model()

        # Define the optimizer as Adam
        self.optimizer = optim.Adam(self.poseNet.parameters(), lr=self.learning_rate)
        # self.optimizer = optim.Adagrad(self.poseNet.parameters(), lr=self.learning_rate)

        # Define loss function as MSE
        self.loss_fn = nn.MSELoss()

        # Lists that are used to plot the loss functions
        self.losses = []
        self.test_losses = []

        dataset = CustomDataset(method='train')
        testset = CustomDataset(method='test')
        self.root = dataset.root
        self.dataloader = DataLoader(dataset, batch_size=self.batch_size, shuffle=True)
        self.testloader = DataLoader(testset)

        # Load of pretrained_weight file
        weight_PATH = 'pretrained_weight.pth'
        self.poseNet.load_state_dict(torch.load(weight_PATH))

    def _build_model(self):
        # 2d pose estimator
        poseNet = CPM2DPose()
        self.poseNet = poseNet.to(device)
        # self.poseNet.train()

    def skeleton2heatmap(self, _heatmap, keypoint_targets):
        heatmap_gt = torch.zeros_like(_heatmap, device=_heatmap.device)

        keypoint_targets = keypoint_targets / 8
        for i in range(keypoint_targets.shape[0]):
            for j in range(21):
                x = int(keypoint_targets[i, j, 0])
                y = int(keypoint_targets[i, j, 1])
                heatmap_gt[i, j, x, y] = 1

        heatmap_gt = heatmap_gt.detach().cpu().numpy()
        for i in range(keypoint_targets.shape[0]):
            for j in range(21):
                heatmap_gt[i, j, :, :] = cv2.GaussianBlur(heatmap_gt[i, j, :, :], ksize=(3, 3), sigmaX=2,
                                                          sigmaY=2) * 9 / 1.1772
        heatmap_gt = torch.FloatTensor(heatmap_gt).to(device)
        return heatmap_gt

    # The train loop
    def train_loop(self, samples):
        # reset the gradiant
        self.optimizer.zero_grad()

        # Get the input to GPU
        x = samples[0].to(device)
        # Get the prediction
        y_hat = self.poseNet(x)

        # Read the ground truth and convert to heatmap
        y_true = samples[1].float().to(device)
        y_true = self.skeleton2heatmap(y_hat, y_true)

        # Get loss value and perform backpropagation
        loss = self.loss_fn(y_hat, y_true)
        loss.backward()
        # Update the weights
        self.optimizer.step()

        # Return the loss value
        return loss.item()

    # The test loop
    def test_loop(self, x, y_true):
        # Get the input to GPU
        x = x.to(device)
        # Get the prediction
        y_hat = self.poseNet(x)

        # Read the ground truth and convert to heatmap
        y_true = y_true.float().to(device)
        y_true = self.skeleton2heatmap(y_hat, y_true)

        # Return the loss value
        loss = self.loss_fn(y_hat, y_true)
        return loss.item()

    # The train method
    def train(self):
        # Initialize the current best loss value of test set, which is infinity
        best_test_loss = 1e9 + 7

        # Iterate through epochs
        for epoch in range(1, self.epochs + 1):

            print(f"Epoch {epoch}:")

            # Training
            self.poseNet.train()
            train_loss = 0
            # Loop through the train set and calculate the loss function
            for samples in tqdm.tqdm(self.dataloader):
                train_loss += self.train_loop(samples)

            self.losses.append(train_loss / len(self.dataloader.dataset))
            print(f" train loss = {train_loss / len(self.dataloader.dataset):.6f}")

            # Testing
            test_loss = 0
            with torch.no_grad():
                # Turn on the evaluation mode
                self.poseNet.eval()

                # Loop through the test set and calculate the loss function
                for x, y_true in tqdm.tqdm(self.testloader):
                    test_loss += self.test_loop(x, y_true)

                self.test_losses.append(test_loss / len(self.testloader.dataset))
                print(f" valid loss = {test_loss / len(self.testloader.dataset):.6f}")
            
            # If the current loss value is less than the current best loss, update the best one and save the model.
            if test_loss / len(self.testloader.dataset) < best_test_loss:
                best_test_loss = test_loss / len(self.testloader.dataset)
                print("Test loss decreased, saving the model...")
                torch.save(self.poseNet.state_dict(), "finetunedweight.pth")

            print("-" * 50)

        print('Finish training.')
