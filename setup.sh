#! /bin/bash


if ! [ -d ~/code/caldera ]
then
    mkdir -p ~/code && git clone https://github.com/mitre/caldera.git ~/code/caldera && pip3 install -r ~/code/caldera/caldera/requirements.txt
fi
