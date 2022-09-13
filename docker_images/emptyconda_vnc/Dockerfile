
# This dockerfile uses the ubuntu vnc image
# VERSION 1 - EDITION 1
# Author: alvin
# Command format: Instruction [arguments / command] ..
FROM continuumio/miniconda

FROM dorowu/ubuntu-desktop-lxde-vnc
 
# Maintainer info
MAINTAINER alvin alvincny529@gmail.com
 

# USER alvin
WORKDIR /datav
RUN sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 4EB27DB2A3B88B8B
RUN apt update
RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

ENV NVIDIA_VISIBLE_DEVICES \
   ${NVIDIA_VISIBLE_DEVICES:-all}
ENV NVIDIA_DRIVER_CAPABILITIES \
   ${NVIDIA_DRIVER_CAPABILITIES:+$NVIDIA_DRIVER_CAPABILITIES,}graphics

#RUN apt-get install -y --no-install-recommends apt-utils
#RUN apt-get install -y build-essentials && \
RUN apt-get install -y nano && \
    apt-get install -y mlocate && \
    apt-get install -y git && \
    apt-get install -y openssh-server && \
    apt-get install -y debconf && \
    apt-get install -y htop && \
    apt-get install -y wget && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

CMD /bin/bash

