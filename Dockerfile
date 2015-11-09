# Ubuntu Base image description
#   docker build -t elarasu/weave-ubuntu .
#
FROM ubuntu:15.04
MAINTAINER elarasu@outlook.com

# Set locale
RUN locale-gen --no-purge en_US.UTF-8

# env variables 
ENV LC_ALL en_US.UTF-8
ENV DEBIAN_FRONTEND noninteractive

# Core updates
RUN  apt-get update \
  && apt-get install -yq wget curl unzip sysstat lsof strace tcpdump dnsutils --no-install-recommends \
  && sed -i '/ENABLED/ s/false/true/' /etc/default/sysstat \
  && apt-get autoremove -y \
  && apt-get autoclean -y \
  && rm -rf /tmp/* /var/tmp/* /var/lib/apt/lists/*

