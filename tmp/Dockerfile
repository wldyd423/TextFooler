#textfooler:cuda2
FROM ufoym/deepo:all-py36-cu90
#FROM nvidia/cuda:11.0.3-base-ubuntu18.04
#FROM python:3.6
#FROM tensorflow/tensorflow:1.12.0-devel-gpu-py3

#RUN apt-get update && \
#    apt-get install -y python3.6 python3.6-dev python3-pip && \
#    apt-get clean && \
#    rm -rf /var/lib/apt/lists/*

#RUN ln -sf /usr/bin/python3.6 /usr/bin/python3

#RUN python3 -m pip install --upgrade pip && \
#    pip install pattern

WORKDIR /TextFooler

#RUN apt-get update \
#    && apt-get install wget -y \ 
#    && apt-get install python3.6 libpython3.6 python3-distutils python3-apt -y  \
#    && wget https://bootstrap.pypa.io/pip/3.6/get-pip.py \
#    && python3.6 get-pip.py

COPY ./TextFooler/requirements.txt .


RUN pip install --upgrade pip && \
    apt-get update && \
    apt-get install libmysqlclient-dev -y && \
    pip install pattern

RUN pip install -r requirements.txt

#FROM tensorflow/tensorflow:1.12.0-devel-gpu-py3

COPY ./TextFooler .

#RUN cd ESIM \
#    && python setup.py install \
#    && cd ..
 

#RUN python attack_classification.py --dataset_path data --target_model bert 



