FROM kalilinux/kali-rolling

RUN apt-get update \
  && apt-get install -y \
     curl \
     dnsutils \
     netcat \
     nmap \
     openssh \
     openssl \
     traceroute \
     wget \
  && apt-get --purge remove -y .\*-doc$ \
  && apt-get clean -y
