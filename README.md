# Siamese Network for cattle identification

## Description
This project implements a Siamese neural network for image similarity comparison of various cattle mainly focussing on cows using TensorFlow and Keras.
It take the muscle features of a cow as reference to check the similarity score.

## Installation
To run this code, make sure you have Python installed. Install the required dependencies using pip:

```bash
pip install -r requirements.txt
```
To use this code, follow these steps:


## Useage
1) Clone the repository :
  ```bash
  git clone https://github.com/your_username/cow-muzzle-siamese.git
```
3) Install dependencies :
```bash
  pip install -r requirements.txt
```
5) Run the main script :
```bash
  python main.py
```
## Model Architecture
The Siamese neural network architecture consists of convolutional layers followed by fully connected layers. The model takes pairs of muzzle images, processes them through the encoder, calculates the cosine similarity between their embeddings, and outputs a binary classification result.

## Training
To train the model, run the training script and specify the dataset path. Adjust hyperparameters as needed.

## Evaluation
After training, evaluate the model using the provided test dataset. Interpret accuracy, loss, and ROC curve results to assess model performance.

