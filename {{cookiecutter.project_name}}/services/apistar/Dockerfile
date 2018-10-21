FROM python:3.6-alpine
MAINTAINER Joshua Goerner <joshua.goerner@gmail.com>

WORKDIR /usr/src/app

RUN apk add --update \
    postgresql-dev \
    build-base \
    openblas-dev \
    gfortran \
  && rm -rf /var/cache/apk/*

RUN pip install --no-cache-dir --proxy=${http_proxy}\
  numpy===1.14.3

RUN pip install --no-cache-dir --proxy=${http_proxy}\
  apistar==0.5.41 \
  gunicorn==19.8.1 \
  dill===0.2.7.1 \
  minio===4.0.0 \
  psycopg2-binary===2.7.4 \
  scipy \
  scikit-learn

RUN pip install --no-cache-dir --no-deps --proxy=${http_proxy}\
  pandas


EXPOSE 8000
