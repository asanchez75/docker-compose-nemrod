#!/bin/bash
# /vhost/current/web is the wwwroot folder
cp -Rf /data/web /vhost/current/
cd /vhost/current/web && php app/console server:start 0.0.0.0:8009
#/usr/local/bin/
#exec /usr/sbin/init # To correctly start D-Bus thanks to https://forums.docker.com/t/any-simple-and-safe-way-to-start-services-on-centos7-systemd/5695/8
while true; do sleep 1d; done
