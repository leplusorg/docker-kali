# checkov:skip=CKV_DOCKER_3
# checkov:skip=CKV_DOCKER_7
# hadolint ignore=DL3007
FROM kalilinux/kali-rolling:latest

HEALTHCHECK NONE

ENTRYPOINT []

SHELL ["/bin/bash", "-o", "pipefail", "-c"]
RUN apt-get update \
  && apt-get install --no-install-recommends -y \
     curl=8.12.1-3 \
     dnsutils=9.20.4-4 \
     emacs=29.4+1-6 \
     iputils-ping=20240905-1 \
     netcat-openbsd=1.228-1 \
     nmap=7.95+dfsg-1kali1 \
     openssh-client=9.9p2-1 \
     openssl=3.4.1-1 \
     smbclient=4.21.4+dfsg-1 \
     traceroute=2.1.6-1 \
     wget=1.24.5-2+b1 \
  && apt-get --purge remove -y .\*-doc$ \
  && apt-get clean -y \
  && rm -rf /var/lib/apt/lists/*
