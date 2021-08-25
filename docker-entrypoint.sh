#!/bin/sh

echo "Starting JMusicBot Version: $JMB_VERSION"
echo "https://github.com/jagrosh/MusicBot"

cd /opt/jmb/config
java -jar -Dnogui=true /opt/jmb/JMusicBot.jar
