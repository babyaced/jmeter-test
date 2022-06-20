# syntax=docker/dockerfile:1
RUN curl -fsSLO https://get.docker.com/builds/Linux/x86_64/docker-17.04.0-ce.tgz \
  && tar xzvf docker-17.04.0-ce.tgz \
  && mv docker/docker /usr/local/bin \
  && rm -r docker docker-17.04.0-ce.tgz

FROM python

RUN pip install bzt

COPY .bzt-rc.yml .bzt-rc

WORKDIR /tmp

COPY blazedemo_script.jmx blazedemo_script.jmx

ENTRYPOINT ["bzt"]