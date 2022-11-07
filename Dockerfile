#FROM docker.io/debian:bullseye-slim
FROM docker.io/python:slim-bullseye

ENV DEBIAN_FRONTEND=noninteractive 

RUN apt-get update \
    && apt-get install -y openssh-client sshpass \
    && apt-get clean
RUN pip3 install ansible
