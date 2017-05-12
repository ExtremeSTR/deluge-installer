FROM ubuntu:latest
RUN apt-get  install -y curl
RUN bash <(curl -s https://rawgit.com/ExtremeSTR/deluge-installer/master/install.sh)

VOLUME /home/deluge

EXPOSE 8112
