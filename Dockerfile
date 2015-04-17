# base - Base Image with supervisord .

FROM ubuntu:trusty
MAINTAINER Robert Bjarnason <robert@citizens.is>

RUN echo 'version 0.4'

ENV DEBIAN_FRONTEND noninteractive
ENV LANG en_US.utf8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

RUN apt-get -qq update
RUN apt-get -yqq upgrade
RUN apt-get -yqq install supervisor

ADD locale /etc/default/locale
ADD supervisord.conf /etc/supervisor/supervisord.conf

RUN locale-gen en_US.UTF-8 && dpkg-reconfigure locales

CMD ["/usr/bin/supervisord"]
