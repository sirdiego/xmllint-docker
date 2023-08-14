FROM ubuntu:20.04

RUN apt-get update && \
    apt-get -y upgrade && \
    apt-get -y install libxml2-utils && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app

ENTRYPOINT ["xmllint"]


