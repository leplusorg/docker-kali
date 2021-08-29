FROM kalilinux/kali-rolling

RUN apt-get update \
  && apt-get install -y \
     curl \
     dnsutils \
     emacs \
     iputils-ping \
     netcat-openbsd \
     nmap \
     openssh-client \
     openssl \
     smbclient \
     traceroute \
     wget \
  && apt-get --purge remove -y .\*-doc$ \
  && apt-get clean -y
