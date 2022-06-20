# syntax=docker/dockerfile:1

FROM python

RUN pip install bzt

COPY .bzt-rc.yml /root/.bzt-rc

WORKDIR /tmp

COPY blazedemo_script.jmx blazedemo_script.jmx

ENTRYPOINT ["bzt"]