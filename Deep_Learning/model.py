import numpy as np
import torch
from torch.autograd import Variable as V
import time
import torch.utils.data as Data
from torch import nn
from torch.nn import Module
from torch.nn import TransformerEncoderLayer
from torch.nn import TransformerEncoder
from torch.nn import TransformerDecoderLayer
from torch.nn import TransformerDecoder
from torch.nn import LayerNorm
from torch.nn import BatchNorm1d
from torch.nn import Linear
import torch.nn.functional as F
from torch.nn.functional import relu
from torch.nn import Dropout
from torch.nn.init import xavier_uniform_
import json


class DemandPrediction(Module):

    def __init__(self, n_zones=263) -> None:
        super(DemandPrediction, self).__init__()

        self.linear = nn.Linear(n_zones, 32)

        self.extract_feature = nn.Conv1d(in_channels=1, out_channels=4, kernel_size=3, stride=1, padding=1)

        encoder_layer = TransformerEncoderLayer(d_model=32, nhead=2, dim_feedforward=128, dropout=0.1)
        encoder_norm = LayerNorm(32)
        self.encoder = TransformerEncoder(encoder_layer=encoder_layer, num_layers=2, norm=encoder_norm)

        decoder_layer = TransformerDecoderLayer(d_model=32, nhead=2, dim_feedforward=128, dropout=0.1)
        decoder_norm = LayerNorm(32)
        self.decoder = TransformerDecoder(decoder_layer=decoder_layer, num_layers=1, norm=decoder_norm)

        self.get_feature = Linear(32, 128)
        self.get_prediction = Linear(128, n_zones)
    
    def forward(self, x):
        x = self.extract_feature(x)
        x = self.linear(x)
        x = self.encoder(x)
        return x

    pass


if __name__ == "__main__":
    data = np.load("data.npy")
    model = DemandPrediction()
    x = model(torch.Tensor(np.array([data[0]])))
    print(x)
    print(x.shape)