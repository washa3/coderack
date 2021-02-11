FROM ubuntu

RUN apt-get update && apt-get -y install racket && apt-get -y install libedit-dev 

WORKDIR .
COPY . .

