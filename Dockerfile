# syntax=docker/dockerfile:1

FROM python:latest

WORKDIR /app

COPY requirements.txt requirements.txt

RUN pip3 install -r requirements.txt

COPY blazedemo_script.jmx blazedemo_script.jmx