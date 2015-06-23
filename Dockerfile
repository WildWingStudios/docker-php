FROM debian:jessie

MAINTAINER Brennen Smith <brennen@wildwingstudios.com>

EXPOSE 9000

RUN apt-get update
RUN apt-get install -fy php5-fpm php5-cli php5-redis php5-mysql php5-gd libgd3 

# Cleanup
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
