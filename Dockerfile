# syntax=docker/dockerfile:1

FROM python

WORKDIR /app

COPY requirements.txt requirements.txt

RUN pip install bzt

COPY blazedemo_script.jmx blazedemo_script.jmx

RUN touch /.bzt-rc

ENTRYPOINT ["bzt"]