FROM ubuntu:20.04

RUN apt-get update && apt-get install -y --no-install-recommends \
  bash \
  vim \
  curl

RUN ln -fs /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime

ARG USER_DOCKER=
ARG PASSWORD_DOCKER=

RUN adduser $USER_DOCKER --disabled-password --gecos ""

RUN echo "$USER_DOCKER ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

RUN echo "$USER_DOCKER:$PASSWORD_DOCKER" | chpasswd

CMD ["tail", "-f", "/dev/null"]
