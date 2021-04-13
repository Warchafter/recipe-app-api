FROM python:3.9.4-alpine
LABEL MAINTAINER="Kevin Arriaga"

ENV PYTHONUNBUFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user