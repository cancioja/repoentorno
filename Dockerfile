FROM ubuntu

MAINTAINER Jose Cancio - TP Final - EDP

ENV PATH=$PATH:/app

WORKDIR /app

RUN mkdir app

COPY . /app/

ENTRYPOINT ["./menu.sh"]
