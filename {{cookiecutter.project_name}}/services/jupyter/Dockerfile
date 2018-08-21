FROM jupyter/all-spark-notebook

USER root

RUN pip install --proxy=${http_proxy}\
    psycopg2-binary\
    minio

USER jovyan
