FROM ubuntu:bionic

RUN apt update \
    && apt upgrade

COPY packages.txt /tmp/packages.txt

RUN apt install -y $(awk '{print $1}' /tmp/packages.txt) \
    && apt clean

