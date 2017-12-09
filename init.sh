#!/bin/bash
# /vhost/current/web is the wwwroot folder
cp -Rf /data/web /vhost/current/
cd /vhost/current/web && php app/console server:start 0.0.0.0:8009
while true; do sleep 1d; done
