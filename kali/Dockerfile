# checkov:skip=CKV_DOCKER_3
# checkov:skip=CKV_DOCKER_7
# hadolint ignore=DL3007
FROM kalilinux/kali-rolling:latest

HEALTHCHECK NONE

ENTRYPOINT []

SHELL ["/bin/bash", "-euo", "pipefail", "-c"]

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install --no-install-recommends -y \
      bind9-dnsutils=1:9.20.7-1 \
      curl=8.13.0~rc3-1 \
      emacs-nox=1:30.1+1-4 \
      inetutils-traceroute=2:2.6-1 \
      iputils-ping=3:20240905-1 \
      netcat-openbsd=1.228-1 \
      nmap=7.95+dfsg-1kali1 \
      openssh-client=1:9.9p2-1 \
      openssl=3.4.1-1 \
      python3=3.13.2-2 \
      python3-pip=25.0.1+dfsg-1 \
      smbclient=2:4.22.0+dfsg-2 \
      tor=0.4.8.16-1 \
      wget=1.25.0-1 \
    && IFS=$'\n\t' \
    && if apt-get -s upgrade | grep -q -e '^Inst ' ; then \
      apt-get -s upgrade | grep -e '^Inst ' ; \
      exit 1 ; \
    fi \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*
