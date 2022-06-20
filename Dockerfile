# syntax=docker/dockerfile:1

FROM python

WORKDIR /app

COPY requirements.txt requirements.txt

RUN pip3 install -r requirements.txt

COPY blazedemo_script.jmx blazedemo_script.jmx

RUN touch /.bzt-rc

ENTRYPOINT ["bzt"]