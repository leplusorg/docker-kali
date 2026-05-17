FROM kalilinux/kali-rolling:latest

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install --no-install-recommends -y systemd
