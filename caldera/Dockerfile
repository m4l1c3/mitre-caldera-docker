FROM debian:latest

RUN set -ex; \
  apt-get update; \
  apt-get install -y git mongodb python3-dev python3-pip wget openssl; \
  pip3 install --upgrade setuptools; \
  rm /etc/mongodb.conf;
COPY conf/mongodb.conf  /etc
RUN mkdir -p /opt/mongo/data; \
    cd /root; \
    git clone https://github.com/mitre/caldera.git; \
    cd /root/caldera/caldera; \
    pip3 install -r requirements.txt; \
    cd ../; \
    mkdir -p dep/crater/crater; \
    cd /root/caldera/dep/crater/crater; \
    wget -O CraterMain.exe "https://github.com/mitre/caldera-crater/releases/download/v0.1.0/CraterMainWin8up.exe"; \
    cd /root/caldera/caldera/www/static/css; \
    wget -O vcpp_compiler.exe "https://www.microsoft.com/en-us/download/confirmation.aspx?id=48145"; \
    wget -O cagent.exe "https://github.com/mitre/caldera-agent/releases/download/v0.1.0/cagent.exe";\
    apt-get remove -y --purge wget; \
    mkdir -p /conf;
EXPOSE 8888
ENTRYPOINT service mongodb start && cd /root/caldera/caldera && python3 caldera.py && /bin/bash
