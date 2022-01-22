FROM kalilinux/kali-rolling:amd64

# hadolint ignore=DL3008
RUN apt-get update \
  && apt-get install --no-install-recommends -y \
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
  && apt-get clean -y \
  && rm -rf /var/lib/apt/lists/*
