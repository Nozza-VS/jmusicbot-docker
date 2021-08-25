FROM openjdk:11-jre-slim

MAINTAINER Nozza <nozza@vengefulsyndicate.com>

ENV JMB_VERSION 0.3.4

RUN mkdir -p /opt/jmb/config
ADD https://github.com/jagrosh/MusicBot/releases/download/$JMB_VERSION/JMusicBot-$JMB_VERSION.jar /opt/jmb/JMusicBot.jar
ADD https://github.com/jagrosh/MusicBot/releases/download/0.2.9/config.txt /opt/jmb/config/config.txt

COPY ./docker-entrypoint.sh /opt/jmb

RUN chmod +x /opt/jmb/docker-entrypoint.sh

VOLUME /opt/jmb/config

ENTRYPOINT ["/opt/jmb/docker-entrypoint.sh"]
