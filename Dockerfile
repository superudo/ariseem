FROM python:3.6-alpine
MAINTAINER Timo Furrer <tuxtimo@gmail.com>

EXPOSE 5555

WORKDIR /app
VOLUME ["/app"]
COPY . /app

RUN pip3 install .

ENV ARISEEM_CONFIG ./config.yml
ENV FLASK_APP ariseem/__main__.py
ENV FLASK_DEBUG 1

CMD flask run --host=0.0.0.0 --port=5555
