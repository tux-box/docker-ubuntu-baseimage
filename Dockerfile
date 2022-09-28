FROM ubuntu:22.04
MAINTAINER tux-box <nathan.flow@gmail.com>

RUN apt-get update && apt-get install -y wget curl nano locales && rm -rf /var/lib/apt/lists/* \
&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8 \
&& apt-get clean && rm -rf /var/lib/apt/lists/*

ENV LANG en_US.utf8
ENV LANGUAGE=en_US:en
ENV LC_ALL=en_US.UTF-8
