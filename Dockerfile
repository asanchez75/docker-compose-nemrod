FROM asanchez75/php5.6-symfony:latest
RUN mkdir /data && \
    cd /data && \
    git clone http://github.com/conjecto/nemrod-demo web && \
    cd /data/web && \
    composer install
ADD init.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/init.sh
CMD ["/usr/local/bin/init.sh"]

