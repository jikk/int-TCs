#!/bin/bash

cd /home/tm/sample/C-WWWX/testData
../install/bin/w3c -n http://ss-www/index.html 2> TC1.log > tc1
if [ -f /tmp/log.txt ]
then
	echo "Log for TC-1"
	mv /tmp/log.txt log-TC1.txt
fi
diff_result=$(diff tc1 ../testOutput/good-01/std-out.txt)
if [ -n "$diff_result" ]
then
       echo "Diff error TC-1"
	echo "$diff_result"
fi
echo "TC-1 end"

../install/bin/w3c -n -va http://ss-www/pageone.html 2> TC2.log > tc2
if [ -f /tmp/log.txt ]
then
	echo "Log for TC-2"
	mv /tmp/log.txt log-TC2.txt
fi
diff_result=$(diff tc2 ../testOutput/good-02/std-out.txt)
if [ -n "$diff_result" ]
then
       echo "Diff error TC-2"
	echo "$diff_result"
fi
grep_result=$(grep "AnchorDelete Remove parent" TC2.log)
if [ -z "$grep_result" ]
then
	echo "Grep error TC-2"
fi
echo "TC-2 end"

../install/bin/w3c -n -vb http://ss-www/pagetwo.html  2> TC3.log > tc3
if [ -f /tmp/log.txt ]
then
	echo "Log for TC-3"
	mv /tmp/log.txt log-TC3.txt
fi
diff_result=$(diff tc3 ../testOutput/good-03/std-out.txt)
if [ -n "$diff_result" ]
then
       echo "Diff error TC-3"
	echo "$diff_result"
fi
echo "TC-3 end"

../install/bin/w3c -n -vc http://ss-www/pagethree.html   2> TC4.log > tc4
if [ -f /tmp/log.txt ]
then
	echo "Log for TC-4"
	mv /tmp/log.txt log-TC4.txt
fi
diff_result=$(diff tc4 ../testOutput/good-04/std-out.txt)
if [ -n "$diff_result" ]
then
       echo "Diff error TC-4"
	echo "$diff_result"
fi
diff_result=$(diff TC4.log ../testOutput/good-04/std-err.txt)
if [ -n "$diff_result" ]
then
       echo "Diff stderr error TC-4"
	echo "$diff_result"
fi
echo "TC-4 end"

../install/bin/w3c -n -vg http://ss-www/index.html 2> TC5.log > tc5
if [ -f /tmp/log.txt ]
then
	echo "Log for TC-5"
	mv /tmp/log.txt log-TC5.txt
fi
diff_result=$(diff tc5 ../testOutput/good-05/std-out.txt)
if [ -n "$diff_result" ]
then
       echo "Diff error TC-5"
	echo "$diff_result"
fi
echo "TC-5 end"

../install/bin/w3c -n -vp http://ss-www/pageone.html 2> TC6.log > tc6
if [ -f /tmp/log.txt ]
then
	echo "Log for TC-6"
	mv /tmp/log.txt log-TC6.txt
fi
diff_result=$(diff tc6 ../testOutput/good-06/std-out.txt)
if [ -n "$diff_result" ]
then
       echo "Diff error TC-6"
	echo "$diff_result"
fi
grep_result=$(grep "HTAccess.... Accessing document http://ss-www/pageone.html" TC6.log)
if [ -z "$grep_result" ]
then
	echo "Grep error TC6"
	echo "Couldn't find HTAccess.... Accessing document http://ss-www/pageone.html"
fi
grep_result=$(grep "Credentials. verified" TC6.log)
if [ -z "$grep_result" ]
then
	echo "Grep error TC6"
	echo "Couldn't find Credentials. verified"
fi
grep_result=$(grep "HTTP........ Generating General Headers" TC6.log)
if [ -z "$grep_result" ]
then
	echo "Grep error TC6"
	echo "Couldn't find HTTP........ Generating General Headers"
fi
grep_result=$(grep "Channel..... Deleted" TC6.log)
if [ -z "$grep_result" ]
then
	echo "Grep error TC6"
	echo "Couldn't find Channel..... Deleted"
fi
echo "TC-6 end"

../install/bin/w3c -n -vs http://ss-www/pagetwo.html 2> TC7.log > tc7
if [ -f /tmp/log.txt ]
then
	echo "Log for TC-7"
	mv /tmp/log.txt log-TC7.txt
fi
diff_result=$(diff tc7 ../testOutput/good-07/std-out.txt)
if [ -n "$diff_result" ]
then
       echo "Diff error TC-7"
	echo "$diff_result"
fi
grep_result=$(grep "MIME header. Content-Length:" TC7.log)
if [ -z "$grep_result" ]
then
	echo "Grep error TC7"
	echo "Couldn't find MIME header. Content-Length:"
fi
grep_result=$(grep "Socket read. FREEING...." TC7.log)
if [ -z "$grep_result" ]
then
	echo "Grep error TC7"
	echo "Couldn't find Socket read. FREEING...."
fi
grep_result=$(grep "Socket write FREEING...." TC7.log)
if [ -z "$grep_result" ]
then
	echo "Grep error TC7"
	echo "Couldn't find Socket write FREEING...."
fi
echo "TC-7 end"

../install/bin/w3c -n -vt http://ss-www/pagethree.html 2> TC8.log > tc8
if [ -f /tmp/log.txt ]
then
	echo "Log for TC-8"
	mv /tmp/log.txt log-TC8.txt
fi
diff_result=$(diff tc8 ../testOutput/good-08/std-out.txt)
if [ -n "$diff_result" ]
then
       echo "Diff error TC-8"
	echo "$diff_result"
fi
grep_result=$(grep "Event....... Registering socket for HTEvent_CONNECT" TC8.log)
if [ -z "$grep_result" ]
then
	echo "Grep error TC8"
	echo "Couldn't find Event....... Registering socket for HTEvent_CONNECT"
fi
grep_result=$(grep "EventOrder.. execute ordered events" TC8.log)
if [ -z "$grep_result" ]
then
	echo "Grep error TC8"
	echo "Couldn't find EventOrder.. execute ordered events"
fi
grep_result=$(grep "Timer....... Deleted active timer" TC8.log)
if [ -z "$grep_result" ]
then
	echo "Grep error TC8"
	echo "Couldn't find Timer....... Deleted active timer"
fi
echo "TC-8 end"

../install/bin/w3c -n -vu http://ss-www/index.html  2> TC9.log > tc9
if [ -f /tmp/log.txt ]
then
	echo "Log for TC-9"
	mv /tmp/log.txt log-TC9.txt
fi
diff_result=$(diff tc9 ../testOutput/good-09/std-out.txt)
if [ -n "$diff_result" ]
then
       echo "Diff error TC-9"
	echo "$diff_result"
fi
diff_result=$(diff TC9.log ../testOutput/good-09/std-err.txt)
if [ -n "$diff_result" ]
then
       echo "Diff stderr error TC-9"
	echo "$diff_result"
fi

echo "TC-9 end"

../install/bin/w3c -n -auth guest:guest@ss-www http://ss-www/pageone.html 2> TC10.log > tc10
if [ -f /tmp/log.txt ]
then
	echo "Log for TC-10"
	mv /tmp/log.txt log-TC10.txt
fi
diff_result=$(diff tc10 ../testOutput/good-10/std-out.txt)
if [ -n "$diff_result" ]
then
       echo "Diff error TC-10"
	echo "$diff_result"
fi
echo "TC-10 end"

rm TC*.log
rm tc*
