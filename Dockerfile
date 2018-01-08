FROM debian:latest

#prepare machine
#clone caldera from github
#run pip install
#caldera/dep/crater/crater/CraterMain.exe
#https://github.com/mitre/caldera-crater/releases/download/v0.1.0/CraterMainWin7.exe
#https://github.com/mitre/caldera-crater/releases/download/v0.1.0/CraterMainWin8up.exe

RUN set -ex; \
  && apt-get update; \
  && apt-get install -y git mongodb python3-dev python3-pip python3-pip install --upgrade setuptools; \
  rm /etc/mongodb.conf; \
COPY ./conf/mongodb.conf  /etc/
RUN service mongodb start; \
  && cd ~/; \
  && git clone https://github.com/mitre/caldera.git; \
  && cd ~/caldera/caldera; \
  && python3-pip install -r requirements.txt; \
  && cd ~/caldera/caldera; \
  && python3 caldera.py &