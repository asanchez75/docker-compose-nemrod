FROM asanchez75/symfony:php5.6
RUN mkdir /data && \
    cd /data && \
    git clone https://github.com/asanchez75/nemrod-demo.git web && \
    cd /data/web && \
    composer install
ADD init.sh /usr/local/bin/
ADD dump.nt /data/web
WORKDIR /data/web
RUN chmod +x /usr/local/bin/init.sh
CMD ["/usr/local/bin/init.sh"]

