#! /bin/bash

cd /root/caldera/caldera

#requirements_array=()

#readarray -t requirements_array < requirements.txt

#requirements_installed=true

#for i in "${requirements_array[@]}"
#do
#	echo "$i"
#	if ! [ -f "$i"]
#	then
#		requirements_installed=false
#	fi
#done

#if ! [ "$requirements_installed" = false ]
#then
	pip3 install -r requirements.txt; 
#fi

cd ../; 

if ! [ -d ./dep ]
then
	mkdir -p dep/crater/crater;
fi

if ! [ -d ./conf ]
then
	mkdir -p /conf;
fi

if ! [ -f /root/caldera/dep/crater/crater/CraterMain.exe ]
then
	cd /root/caldera/dep/crater/crater;
	wget -O CraterMain.exe "https://github.com/mitre/caldera-crater/releases/download/v0.1.0/CraterMainWin8up.exe";
fi

cd /root/caldera/caldera/www/static/css;

if ! [ -f /root/caldera/caldera/www/static/css/vcpp_compiler.exe ]
then
	wget -O vcpp_compiler.exe "https://www.microsoft.com/en-us/download/confirmation.aspx?id=48145";
fi

if ! [ -f /root/caldera/caldera/www/static/css/cagent.exe ]
then
	wget -O cagent.exe "https://github.com/mitre/caldera-agent/releases/download/v0.1.0/cagent.exe";
fi
