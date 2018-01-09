FROM ubuntu:latest

#prepare machine
#clone caldera from github
#run pip install
#caldera/dep/crater/crater/CraterMain.exe
#https://github.com/mitre/caldera-crater/releases/download/v0.1.0/CraterMainWin7.exe
#https://github.com/mitre/caldera-crater/releases/download/v0.1.0/CraterMainWin8up.exe
#the agent file needs to be put somewhere it can be served from still....

RUN set -ex; \
  apt-get update; \
  apt-get install -y git mongodb python3-dev python3-pip python3-pip install --upgrade setuptools; \
  rm /etc/mongodb.conf; \
COPY ./conf/mongodb.conf  /etc/
#COPY ./start.sh ./
#RUN service mongodb start; \
#    cd ~/; \
#    git clone https://github.com/mitre/caldera.git; \
#    cd ~/caldera; \
#    python3-pip install -r requirements.txt; \
#    mkdir -p dep/crater/crater; \
#    cd ~/caldera/dep/crater/crater; \
#    wget -O CraterMain.exe "https://github.com/mitre/caldera-crater/releases/download/v0.1.0/CraterMainWin8up.exe"; \
#    cd ~/caldera/caldera; \
#    wget -O vcpp_compiler.exe "https://www.microsoft.com/en-us/download/confirmation.aspx?id=48145"; \
#    wget -O cagent.exe "https://github.com/mitre/caldera-agent/releases/download/v0.1.0/cagent.exe" \ 

#CMD sh ~/start.sh
