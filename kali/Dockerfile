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
    # FIXME @TL workaround for amd64 vs arm64 versions
    && if [ "$(\uname -m)" = 'aarch64' ]; then \
      SUFFIX='+b1' ; \
    else \
      SUFFIX='' ; \
    fi \
    && apt-get install --no-install-recommends -y \
      bind9-dnsutils=1:9.20.18-1 \
      curl=8.18.0-2 \
      emacs-nox=1:30.2+1-2 \
      git=1:2.51.0-1${SUFFIX} \
      inetutils-traceroute=2:2.7-2 \
      iputils-ping=3:20250605-1${SUFFIX} \
      netcat-openbsd=1.234-1${SUFFIX} \
      nmap=7.98+dfsg-1kali1 \
      openssh-client=1:10.2p1-3 \
      openssl=3.5.4-1+b1 \
      python3=3.13.7-1+b1 \
      python3-pip=25.3+dfsg-1 \
      smbclient=2:4.23.4+dfsg-1 \
      tor=0.4.8.21-1 \
      wget=1.25.0-2${SUFFIX} \
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
