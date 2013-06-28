#!/bin/bash
#should be run outside testData dir

export CHER_SRC="/opt/stonesoup/TH-workspace/install/sbin/cherokee"
export START_SERVER="$CHER_SRC --port=8888 --documentroot=/home/tm/phase2/C-CHER/testData/wwwroot"
export KILL_SERVER="/home/tm/phase2/C-CHER/scripts/kill_servers.sh"
export OUTPUT_DIR="/home/tm/phase2/C-CHER/testOutput"
export COMPILER_LOG="/home/tm/phase2/compiler-rt.log"

test_cases=( "/home/tm/phase2/C-CHER/scripts/service_mon.sh localhost 8888; wget -P good-01 http://localhost:8888/index.html" "/home/tm/phase2/C-CHER/scripts/service_mon.sh localhost 8888; 	wget -P good-02 http://localhost:8888/pageone.html" "/home/tm/phase2/C-CHER/scripts/service_mon.sh localhost 8888; 	wget -P good-03 http://localhost:8888/pagetwo.html" "/home/tm/phase2/C-CHER/scripts/service_mon.sh localhost 8888; 	wget -P good-04 http://localhost:8888/pagethree.html" "/home/tm/phase2/C-CHER/scripts/service_mon.sh localhost 8888; 	wget -P good-05 -r http://localhost:8888/index.html" "/home/tm/phase2/C-CHER/scripts/service_mon.sh localhost 8888; wget -P good-06 -r --convert-links http://localhost:8888/pageone.html" "/home/tm/phase2/C-CHER/scripts/service_mon.sh localhost 8888; wget -P good-07 --save-headers http://localhost:8888/index.html" "/home/tm/phase2/C-CHER/scripts/service_mon.sh localhost 8888; wget -P good-08 --save-headers --user=guest --password=guest --header=\"Accept-Language: es\" http://localhost:8888/index.html" "/home/tm/phase2/C-CHER/scripts/service_mon.sh localhost 8888; wget -P good-09 --header=\"Accept-Language: es\" http://localhost:8888/images/cupcake.jpg" "/home/tm/phase2/C-CHER/scripts/service_mon.sh localhost 8888; wget -P good-10 --user=guest --password=guest http://localhost:8888/images/confessionbear.jpg"
)

output=("good-01"	\
	"good-02"	\
	"good-03"	\
	"good-04"	\
	"good-05"	\
	"good-06"	\
	"good-07"	\
	"good-08"	\
	"good-09"	\
	"good-10"	\
)
#clean up if smth is there
rm -rf /home/tm/phase2/C-CHER/good-0*
rm tests.log
rm $COMPILER_LOG

#Start Server
eval "$START_SERVER &"

for i in {0..9}
do
	echo "Running test $((i+1))" >> tests.log
	eval "${test_cases[$i]}"
done

eval "$KILL_SERVER"
echo "Cleaning up"
perl cher_filter.pl
echo "Done! FP are in filtered.log"
