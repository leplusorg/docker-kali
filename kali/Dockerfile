# hadolint ignore=DL3007 # checkov:skip=CKV_DOCKER_7 # trivy:ignore:AVD-DS-0001 # [Don't use latest]: no tagged version available
FROM kalilinux/kali-rolling:latest

HEALTHCHECK NONE

ENTRYPOINT []

ARG USER_NAME=kali
ARG USER_HOME=/home/kali
ARG USER_ID=1000
ARG USER_GECOS=kali

SHELL ["/bin/bash", "-euo", "pipefail", "-c"]

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install --no-install-recommends -y \
      bind9-dnsutils=1:9.20.11-4+b1 \
      curl=8.15.0-1 \
      emacs-nox=1:30.1+1-9 \
      git=1:2.51.0-1 \
      inetutils-traceroute=2:2.6-4 \
      iputils-ping=3:20250605-1 \
      netcat-openbsd=1.229-1 \
      nmap=7.95+dfsg-3kali1 \
      openssh-client=1:10.0p1-8 \
      openssl=3.5.2-1 \
      python3=3.13.5-1 \
      python3-pip=25.2+dfsg-1 \
      smbclient=2:4.23.0+dfsg-3 \
      tor=0.4.8.16-1 \
      wget=1.25.0-2 \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*

RUN adduser \
  --home "${USER_HOME}" \
  --uid "${USER_ID}" \
  --gecos "${USER_GECOS}" \
  --disabled-password \
  "${USER_NAME}"

USER "${USER_NAME}"

ENV HOME="${USER_HOME}"

WORKDIR "${HOME}"
