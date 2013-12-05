# Base
# 
# VERSION               0.1

FROM ubuntu
MAINTAINER David Zumbrunnen <zumbrunnen@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get -y install vim-tiny 
