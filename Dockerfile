FROM pytorch/pytorch:1.12.1-cuda11.3-cudnn8-devel

RUN apt update ; apt install -y nano git cmake wget htop software-properties-common

COPY requirements.txt /workspace
RUN pip install numpy cython
RUN pip install -r requirements.txt