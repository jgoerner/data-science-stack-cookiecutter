FROM python:3.6

WORKDIR /usr/src/app

RUN pip install --no-cache-dir --proxy=${http_proxy}\
  apistar==0.5.12 \
  gunicorn==19.8.1 \
  dill===0.2.7.1 \
  minio===4.0.0 \
  numpy===1.12.1 \
  pandas===0.19.2 \
  psycopg2-binary===2.7.4 \
  scipy===0.19.1 \
  scikit-learn===0.19.1

EXPOSE 8000
