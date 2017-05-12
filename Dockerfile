FROM ubuntu:latest
RUN apt-get  install -y curl
RUN bash <(curl -s https://rawgit.com/ExtremeSTR/deluge-installer/master/install.sh)

ENV PASS admin 

RUN sudo echo DELUGED_USER=${PASS} > /etc/default/deluge-daemon
RUN sudo echo RUN_AT_STARTUP="YES" > /etc/default/deluge-daemon

VOLUME /home/deluge

EXPOSE 20 21 
