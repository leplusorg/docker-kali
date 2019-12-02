FROM kalilinux/kali-rolling

RUN apt-get update \
  && apt-get install -y \
     nmap \
  && apt-get --purge remove -y .\*-doc$
  && apt-get clean -y
