FROM clockwise/php7-mysql-unit
MAINTAINER Maxim Shcherbakov <maxhero90@gmail.com>

RUN \
 apt-get update &&\
 apt-get -y --no-install-recommends install elasticsearch &&\
 apt-get autoclean && apt-get clean && apt-get autoremove

RUN \
 composer global require "hirak/prestissimo"

RUN \
 composer global require "fxp/composer-asset-plugin:^1.2.0"