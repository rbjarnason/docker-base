# base - Base Image with supervisord

FROM ubuntu
MAINTAINER David Zumbrunnen <zumbrunnen@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get -qq update
RUN apt-get -yqq upgrade
RUN apt-get -yqq install supervisor

ADD supervisord.conf /etc/supervisor/supervisord.conf

CMD ["/usr/bin/supervisord"]
