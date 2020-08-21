FROM python:3.7.8-buster


# copy code into image and set as working directory
COPY . /application
WORKDIR /application

RUN  apt-get update && apt-get install -y python3-pip

RUN pip3 install -r requirements.txt