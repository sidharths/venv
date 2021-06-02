#!/bin/bash

# run this script to initialize environment and install dependencies

rm -rf venv
mkdir venv
sudo apt-get install -y python3-pip python3-venv libglu1-mesa-dev libgl1-mesa-dev libosmesa6-dev xvfb ffmpeg curl patchelf libglfw3 libglfw3-dev cmake zlib1g zlib1g-dev swig
python3 -m venv venv
source ./venv/bin/activate
pip install --upgrade pip

# below needed for mujoco build
pip install cython lockfile  wheel jupyter  ipykernel glfw imageio
python -m ipykernel install --user --name=ref_error --display-name "Python3.8 (venv@ubuntu)"
pip install torch==1.8.0+cu111 torchvision==0.9.0+cu111 torchaudio==0.8.0 torchtext==0.9.0 -f https://download.pytorch.org/whl/torch_stable.html
pip install -r  requirements.txt