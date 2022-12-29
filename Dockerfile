FROM python:3-buster

LABEL maintainer="i@vsysoev.ru"

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update --fix-missing
RUN apt-get upgrade -y

RUN apt-get install -y xvfb

RUN apt install -y python3
RUN apt-get install -y python3-pip
RUN pip3 install Pillow==6.2.1 --no-cache-dir

RUN pip3 install pyautogui

RUN apt-get install -y x11-apps

ENV TZ=Europe/Moscow
RUN apt-get install -y python3-tk

RUN pip3 install python-xlib
RUN apt-get install -y scrot

RUN pip3 install --upgrade pip
RUN pip3 install opencv-python
RUN pip3 install pytesseract
RUN pip3 install levenshtein
RUN apt install -y tesseract-ocr tesseract-ocr-rus

RUN apt install -y fluxbox
