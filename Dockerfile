FROM python:3.8.10-buster


# copy code into image and set as working directory
COPY . /application
WORKDIR /application

RUN  apt-get update && apt-get install -y python3-pip libglu1-mesa-dev libgl1-mesa-dev libosmesa6-dev xvfb ffmpeg curl patchelf libglfw3 libglfw3-dev cmake zlib1g zlib1g-dev swig
 
RUN pip3 install -r requirements.txt