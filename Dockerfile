FROM python:3.7-alpine
LABEL maintainer="Daewon Seo"

ENV PYTHONUNBUFFERED 1 

COPY ./requirements.txt /requirements.txt 
# 현 디렉토리의 requirements.txt 파일을 도커이미지 requirements.txt로 복사하겠다.
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user