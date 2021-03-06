FROM openjdk:11-jre-slim

MAINTAINER Nozza <nozza@vengefulsyndicate.com>

ENV JMB_VERSION 0.3.6
ENV REPO https://github.com/jagrosh/MusicBot

RUN mkdir -p /opt/jmb/config
ADD $REPO/releases/download/$JMB_VERSION/JMusicBot-$JMB_VERSION.jar /opt/jmb/JMusicBot.jar
ADD $REPO/releases/download/0.2.9/config.txt /opt/jmb/config/config.txt

COPY ./docker-entrypoint.sh /opt/jmb

RUN chmod +x /opt/jmb/docker-entrypoint.sh

VOLUME /opt/jmb/config

ENTRYPOINT ["/opt/jmb/docker-entrypoint.sh"]
