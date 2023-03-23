FROM ufoym/deepo:all-py36-cu90

WORKDIR /TextFooler

COPY ./TextFooler/requirements.txt .


RUN pip install --upgrade pip && \
    apt-get update && \
    apt-get install libmysqlclient-dev -y && \
    pip install pattern

RUN pip install -r requirements.txt


COPY ./TextFooler .




