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
      bind9-dnsutils=1:9.20.11-4 \
      curl=8.14.1-2 \
      emacs-nox=1:30.1+1-6 \
      git=1:2.50.1-0.1 \
      inetutils-traceroute=2:2.6-4 \
      iputils-ping=3:20250605-1 \
      netcat-openbsd=1.229-1 \
      nmap=7.95+dfsg-3kali1 \
      openssh-client=1:10.0p1-7 \
      openssl=3.5.1-1 \
      python3=3.13.5-1 \
      python3-pip=25.2+dfsg-1 \
      smbclient=2:4.22.3+dfsg-4 \
      tor=0.4.8.16-1 \
      wget=1.25.0-2 \
    && if apt-get -s upgrade | tee -a /dev/stderr | grep -q -e '^Inst ' ; then \
      exit 1 ; \
    fi \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*
