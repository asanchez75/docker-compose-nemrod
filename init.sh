#!/bin/bash
# /vhost/current/web is the wwwroot folder
#curl -X POST --data-binary "uri=https://gist.githubusercontent.com/asanchez75/778a78f182672065f1f7ba2ff66f5907/raw/fab28c29e2139d59eb18b80f1c0c9f0bf6348b3d/data.nobelprize.nt" http://192.168.0.6:8080/bigdata/sparql
curl -H 'Content-Type: text/turtle' --upload-file dump.nt -X POST "http://192.168.0.6:8080/bigdata/sparql?context-uri=http://data.nobelprize.org"
cp -Rf /data/web /vhost/current/
cd /vhost/current/web && \
   php app/console server:start 0.0.0.0:8009 && \
   php app/console nemrod:elastica:populate --index=nobel
while true; do sleep 1d; done
