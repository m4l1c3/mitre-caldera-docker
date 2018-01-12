FROM debian:latest

RUN set -ex; \
  apt-get update; \
  apt-get install -y git mongodb python3-dev python3-pip wget openssl; \
  pip3 install --upgrade setuptools; \
  rm /etc/mongodb.conf;
COPY conf/mongodb.conf  /etc
COPY conf/*.sh /root/
RUN cd /root && chmod +x *.sh && ./setup.sh;
RUN rm -f /root/setup.sh && apt-get remove -y --purge wget;

EXPOSE 8888
ENTRYPOINT ["/root/startup.sh"]
