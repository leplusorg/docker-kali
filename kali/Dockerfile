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
      bind9-dnsutils=1:9.20.11-1 \
      curl=8.14.1-2 \
      emacs-nox=1:30.1+1-6 \
      git=1:2.47.2-0.2 \
      inetutils-traceroute=2:2.6-3 \
      iputils-ping=3:20240905-3 \
      netcat-openbsd=1.229-1 \
      nmap=7.95+dfsg-3kali1 \
      openssh-client=1:10.0p1-5 \
      openssl=3.5.1-1 \
      python3=3.13.3-1 \
      python3-pip=25.1.1+dfsg-1 \
      smbclient=2:4.22.3+dfsg-2 \
      tor=0.4.8.16-1 \
      wget=1.25.0-2 \
    && IFS=$'\n\t' \
    && if apt-get -s upgrade | grep -q -e '^Inst ' ; then \
      apt-get -s upgrade | grep -e '^Inst ' ; \
      exit 1 ; \
    fi \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*
