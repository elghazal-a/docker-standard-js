FROM mhart/alpine-node:10.12.0

MAINTAINER geniousphp "geniousphp@gmail.com"

RUN npm install -g standard@12.0.1 \
	&& npm install -g standard-reporter@1.0.5 \
  && npm cache clean --force \
	&& mkdir /standard

WORKDIR /standard

VOLUME /standard

