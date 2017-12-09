This a docker container to run the Nemrod demo https://github.com/asanchez75/nemrod-demo

1. Log into the docker container containing the Apacher server
2. Execute
cd /vhost/current/web
3. and there, run
curl -H 'Content-Type: text/turtle' --upload-file dump.nt -X POST "http://192.168.0.6:8080/bigdata/sparql?context-uri=http://data.nobelprize.org"
php app/console nemrod:elastica:populate --index=nobel

Reference
https://www.elastic.co/guide/en/elasticsearch/reference/current/docker.html
https://github.com/samvera-labs/geomash/wiki/Blazegraph-Setup
https://gist.github.com/asanchez75/8e1b9a6dac8736ddf6cc7c374b35ab88
