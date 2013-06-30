#!/bin/bash

cd /home/tm/sample/C-ZSHX/testData
../src/Src/zsh -c 'cp --help' 2> TC1.log > tc1
if [ -f /tmp/log.txt ]
then
	echo "Log for TC-1"
	mv /tmp/log.txt log-TC1.txt
fi
diff_result=$(diff tc1 ../testOutput/good-01/zsh-good-01-out-02.txt)
if [ -n "$diff_result" ]
then
       echo "Diff error TC-1"
	echo "$diff_result"
fi
echo "TC-1 end"

../src/Src/zsh input/good-02/run-script.sh 2> TC2.log > tc2
if [ -f /tmp/log.txt ]
then
	echo "Log for TC-2"
	mv /tmp/log.txt log-TC2.txt
fi
echo "Hello World!" > testOutput.marios
diff_result=$(diff tc2 testOutput.marios)
if [ -n "$diff_result" ]
then
       echo "Diff error TC-2"
	echo "$diff_result"
fi
rm testOutput.marios
echo "TC-2 end"

../src/Src/zsh input/good-03/run-script.sh 2> TC3.log > tc3
if [ -f /tmp/log.txt ]
then
	echo "Log for TC-3"
	mv /tmp/log.txt log-TC3.txt
fi
echo "../src/Src/zsh: can't open input file: input/good-03/run-script.sh" > testOutput.marios
diff_result=$(diff TC3.log testOutput.marios)
if [ -n "$diff_result" ]
then
       echo "Diff error TC-3"
	echo "$diff_result"
fi
rm testOutput.marios
echo "TC-3 end"

../src/Src/zsh -c 'export ZDOTDIR="input/good-04/" && echo "ZDOTDIR="$ZDOTDIR && source $ZDOTDIR/.zlogin' 2> TC4.log > tc4
if [ -f /tmp/log.txt ]
then
	echo "Log for TC-4"
	mv /tmp/log.txt log-TC4.txt
fi
diff_result=$(diff tc4 ../testOutput/good-04/zsh-good-04-out.txt)
if [ -n "$diff_result" ]
then
       echo "Diff error TC-4"
	echo "$diff_result"
fi
echo "TC-4 end"

../src/Src/zsh -c 'export ZDOTDIR="input/good-05/" && source $ZDOTDIR/.zshrc' 2> TC5.log > tc5
if [ -f /tmp/log.txt ]
then
	echo "Log for TC-5"
	mv /tmp/log.txt log-TC5.txt
fi
echo "Hello World!" > output.marios
diff_result=$(diff tc5 output.marios)
if [ -n "$diff_result" ]
then
       echo "Diff error TC-5"
	echo "$diff_result"
fi
rm output.marios
echo "TC-5 end"

../src/Src/zsh -c 'input/good-06/TCPEchoClient `dig +short localhost` "Hello" 31337' 2> TC6.log > tc6
if [ -f /tmp/log.txt ]
then
	echo "Log for TC-6"
	mv /tmp/log.txt log-TC6.txt
fi
echo "Received: Hello" > output.marios
diff_result=$(diff tc6 output.marios)
if [ -n "$diff_result" ]
then
       echo "Diff error TC-6"
	echo "$diff_result"
fi
rm output.marios
echo "TC-6 end"

../src/Src/zsh input/good-07/run-script.sh 2> TC7.log > tc7
if [ -f /tmp/log.txt ]
then
	echo "Log for TC-7"
	mv /tmp/log.txt log-TC7.txt
fi
diff_result=$(diff tc7 ../testOutput/good-07/zsh-good-07-out.txt)
if [ -n "$diff_result" ]
then
       echo "Diff error TC-6"
	echo "$diff_result"
fi
echo "TC-7 end"

../src/Src/zsh input/good-08/run-script.sh 2> TC8.log > tc8
if [ -f /tmp/log.txt ]
then
	echo "Log for TC-8"
	mv /tmp/log.txt log-TC8.txt
fi
diff_result=$(diff output/good-08/zsh-good-08-log.txt ../testOutput/good-08/zsh-good-08-log.txt)
if [ -n "$diff_result" ]
then
       echo "Diff error TC-8"
	echo "$diff_result"
fi
echo "TC-8 end"

../src/Src/zsh input/good-09/run-script.sh 2> TC9.log > tc9
if [ -f /tmp/log.txt ]
then
	echo "Log for TC-9"
	mv /tmp/log.txt log-TC9.txt
fi
diff_result=$(diff output/good-09/zsh-good-09-out-1.txt ../testOutput/good-09/zsh-good-09-out-1.txt)
if [ -n "$diff_result" ]
then
       echo "Diff error TC-9"
	echo "$diff_result"
fi
echo "TC-9 end"

../src/Src/zsh input/good-10/run-script.sh 2> TC10.log > tc10
if [ -f /tmp/log.txt ]
then
	echo "Log for TC-10"
	mv /tmp/log.txt log-TC10.txt
fi
diff_result=$(diff tc10 ../testOutput/good-10/zsh-good-10-out.txt)
if [ -n "$diff_result" ]
then
       echo "Diff error TC-10"
	echo "$diff_result"
fi
echo "TC-10 end"

rm tc*
rm TC*.log
