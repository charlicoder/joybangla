FROM python:3.8.1-alpine


ENV PYTHONUNBUFFERED 0

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt 

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D charlicoder
USER charlicoder
