# This file is auto-generated during the composer install
parameters:
    mailer_transport: smtp
    mailer_host: 127.0.0.1
    mailer_user: null
    mailer_password: null
    locale: en
    secret: ThisTokenIsNotSoSecretChangeIt
    debug_toolbar: true
    debug_redirects: false
    use_assetic_controller: true
    nemrod_endpoint_host: http://blazegraph
    nemrod_endpoint_port: 8080
    nemrod_endpoint_path: bigdata/sparql
    elasticsearch_host: elasticsearch
    elasticsearch_port: 9200



curl -X POST --data-binary "uri=https://gist.githubusercontent.com/asanchez75/778a78f182672065f1f7ba2ff66f5907/raw/fab28c29e2139d59eb18b80f1c0c9f0bf6348b3d/data.nobelprize.nt" http://localhost:9999/bigdata/sparql

php app/console nemrod:elastica:populate --index=nobel

https://www.elastic.co/guide/en/elasticsearch/reference/current/docker.html
https://github.com/samvera-labs/geomash/wiki/Blazegraph-Setup
https://gist.github.com/asanchez75/8e1b9a6dac8736ddf6cc7c374b35ab88