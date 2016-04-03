FROM phusion/baseimage:0.9.18
MAINTAINER Kenny Drobnack kennydrobnack@gmail.com
LABEL description="Basic Docker image with tools I typically would use on a development system"

# Use baseimage-docker's init system.
CMD ["/sbin/my_init"]

RUN apt-get update && \
  apt-get install -y curl \
  wget \
  file \ 
  tmux \
  vim

# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

#Save Dockerfile so we can rebuild if needed
COPY Dockerfile /opt/Dockerfile
