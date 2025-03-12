# checkov:skip=CKV_DOCKER_3
# checkov:skip=CKV_DOCKER_7
# hadolint ignore=DL3007
FROM kalilinux/kali-rolling:latest

HEALTHCHECK NONE

ENTRYPOINT []

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

RUN apt-get update \
  && apt-get upgrade \
  && apt-get install --no-install-recommends -y \
     bind9-dnsutils=1:9.20.4-4 \
     curl=8.12.1-3 \
     emacs-nox=1:29.4+1-6 \
     inetutils-traceroute=2:2.6-1 \
     iputils-ping=3:20240905-1 \
     netcat-openbsd=1.228-1 \
     nmap=7.95+dfsg-1kali1 \
     openssh-client=1:9.9p2-1 \
     openssl=3.4.1-1 \
     smbclient=2:4.22.0+dfsg-1 \
     wget=1.25.0-1 \
  && if apt list --upgradable | grep -q -e 'upgradable' ; then \
     apt list --upgradable ; \
     exit 1 ; \
  fi \
  && apt-get --purge remove -y .\*-doc$ \
  && apt-get clean -y \
  && rm -rf /var/lib/apt/lists/*
