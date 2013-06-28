#!/bin/bash
#should be run outside testData dir
export SS_TC_ROOT="/home/tm/phase2/C-NGIN"
export NGIN="/opt/stonesoup/TH-workspace/install/sbin/nginx"
export START_SERVER="$NGIN -c $SS_TC_ROOT/testData/nginx.conf"
export KILL_SERVER="$SS_TC_ROOT/scripts/kill_servers.sh"
export OUTPUT_DIR="$SS_TC_ROOT/testOutput"
export COMPILER_LOG="/home/tm/phase2/compiler-rt.log"
export PRE_PROCESS="sed -e '/STONESOUP_ENV_VARIABLES/{r nginx_conf_env.txt' -e 'd}' -i $SS_TC_ROOT/testData/nginx.conf;sed -e \"s|PREFIX_DIRECTORY|\"$SS_TC_ROOT/\"|\" -i $SS_TC_ROOT/testData/nginx.conf;" 	
export SERVICE_MON="$SS_TC_ROOT/scripts/service_mon.sh localhost 8888;"

test_cases=( "wget -P good-01 http://localhost:8888" 		\
	"wget -P good-02 http://localhost:8888/pageone.html"	\
	"wget -P good-03 http://localhost:8888/pagetwo.html"	\
	"wget -P good-04 http://localhost:8888/pagethree.html" 	\
	"wget -P good-05 -r http://localhost:8888/index.html"	\
	"wget -P good-06 -r --convert-links http://localhost:8888/pageone.html" \
	"wget -P good-07 --save-headers http://localhost:8888/index.html"	\
	"wget -P good-08 --save-headers --user=guest --password=guest http://localhost:8888/index.html" \
"wget -P good-09 --header=\"Accept-Language: es\" http://localhost:8888/images/cupcake.jpg" \
"wget -P good-10 --user=guest --password=guest http://localhost:8888/images/confessionbear.jpg"
)

#clean up if smth is there
rm -rf /home/tm/phase2/C-NGIN/good-0*
rm tests.log
rm $COMPILER_LOG

#Start Server
eval "$START_SERVER &"
eval "$PRE_PROCESS"
eval "$SERVICE_MON"

for i in {0..9}
do
	echo "Running test $((i+1))" >> tests.log
	eval "${test_cases[$i]}"
done

eval "$KILL_SERVER"
echo "Cleaning up"
perl cher_filter.pl
echo "Done! FP are in filtered.log"
