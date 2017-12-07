FROM asanchez75/symfony:nodejs
RUN mkdir /data && \
    cd /data && \
    git clone http://github.com/conjecto/nemrod-demo && \
    cd /data/nemrod-demo && \
    composer install
ADD init.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/init.sh
CMD ["/usr/local/bin/init.sh"]

