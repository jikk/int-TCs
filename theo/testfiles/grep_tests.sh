#!/bin/bash
#should be run inside testData directory

export GREP_SRC="/home/tm/phase2/C-GREP/src/src/grep"
export OUTPUT_DIR="/home/tm/phase2/C-GREP/testOutput"

test_cases=( "^[ex] input/dict.txt" 					\
	"-r -i BIRMINGHAM input/zip/" 					\
	"-E -f input/grep-good-03-expr.txt input/mktsymbols.txt"	\
	"-w '^[A-Za-z].*X\b.*\(AMERICAN\)' input/mktsymbols.txt" 	\
	"--mmap NASDAQ input/mktsymbols.txt" 				\
	"-v -i -c NASDAQ input/mktsymbols.txt" 				\
	"-D read -e ^[DPZ] /dev/stdin < input/mktsymbols.txt" 		\
	"-E -C 15 ^[BRT] input/mktsymbols.txt"				\
	"-v ^[BRT] input/mktsymbols.txt"				\
	"-c -v ^[BRT] input/mktsymbols.txt"				\
)

checks=("good-01/std-out.txt"	\
	"good-02/std-out.txt"	\
	"good-03/std-out.txt"	\
	"good-04/std-out.txt"	\
	"good-05/std-out.txt"	\
	"good-06/std-out.txt"	\
	"good-07/std-out.txt"	\
	"good-08/std-out.txt"	\
	"good-09/std-out.txt"	\
	"good-10/std-out.txt"	\
)

#clean up if smth is there
rm *.log

# $1 is the command to run
for i in {0..9}
do
   	echo "Running test $((i+1))"
   	echo "Running test $((i+1))" >> tests_output.log
	eval "time $GREP_SRC ${test_cases[$i]} > tc_stdout 2>>debug.log"
	#Handle post processing of some testcases
	if [ $i -eq 1 ]
	then
		echo "Processing Output"
		eval "sort tc_stdout -o tc_stdout_tmp ; mv tc_stdout_tmp tc_stdout"
	fi
	#write to global output
	cat tc_stdout >> tests_output.log

	DIFF=$(diff tc_stdout $OUTPUT_DIR/${checks[$i]}) 
	if [ "$DIFF" != "" ] 
	then	
		echo "Fail"
		echo "Fail" >> tests_output.log
	else 
		echo "Success"
		echo "Success" >> tests_output.log
	fi
	echo ""
done
echo "Cleaning up"
perl filter.pl
echo "Done! FP are in filtered.log"
