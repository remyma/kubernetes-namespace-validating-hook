FROM python:3.5-slim-jessie
LABEL maintener=https://github.com/remyma

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

ADD . /usr/src/app
RUN ["pip", "install", "-r", "requirements.txt"]

EXPOSE 8000

RUN ["chmod", "+x", "falcon-docker-entrypoint.sh"]
ENTRYPOINT ["./falcon-docker-entrypoint.sh", "start"]
