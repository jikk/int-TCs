#!/bin/bash

cd /home/tm/sample/C-WGET/testData
../src/src/wget -P good-01 http://ss-www/index.html 2> TC1.log
if [ -f /tmp/log.txt ]
then
	echo "Log for TC-1"
	mv /tmp/log.txt log-TC1.txt
fi
diff_result=$(diff -r good-01 ../testOutput/good-01)
if [ -n "$diff_result" ]
then
       echo "Diff error TC-1"
	echo "$diff_result"
fi
echo "TC-1 end"

../src/src/wget -P good-02 http://ss-www/pageone.html  2> TC2.log
if [ -f /tmp/log.txt ]
then
	echo "Log for TC-2"
	mv /tmp/log.txt log-TC2.txt
fi
diff_result=$(diff -r good-02 ../testOutput/good-02)
if [ -n "$diff_result" ]
then
       echo "Diff error TC-2"
	echo "$diff_result"
fi
echo "TC-2 end"

../src/src/wget -P good-03 http://ss-www/pagetwo.html  2> TC3.log
if [ -f /tmp/log.txt ]
then
	echo "Log for TC-3"
	mv /tmp/log.txt log-TC3.txt
fi
diff_result=$(diff -r good-03 ../testOutput/good-03)
if [ -n "$diff_result" ]
then
       echo "Diff error TC-3"
	echo "$diff_result"
fi
echo "TC-3 end"

../src/src/wget -P good-04 -p http://ss-www/pagethree.html  2> TC4.log
if [ -f /tmp/log.txt ]
then
	echo "Log for TC-4"
	mv /tmp/log.txt log-TC4.txt
fi
diff_result=$(diff -r good-04 ../testOutput/good-04)
if [ -n "$diff_result" ]
then
       echo "Diff error TC-4"
	echo "$diff_result"
fi
echo "TC-4 end"

../src/src/wget -P good-05 -r http://ss-www/index.html 2> TC5.log
if [ -f /tmp/log.txt ]
then
	echo "Log for TC-5"
	mv /tmp/log.txt log-TC5.txt
fi
diff_result=$(diff -r good-05 ../testOutput/good-05)
if [ -n "$diff_result" ]
then
       echo "Diff error TC-5"
	echo "$diff_result"
fi
echo "TC-5 end"

../src/src/wget -P good-06 -r --convert-links http://ss-www/index.html 2> TC6.log
if [ -f /tmp/log.txt ]
then
	echo "Log for TC-6"
	mv /tmp/log.txt log-TC6.txt
fi
diff_result=$(diff -r good-06 ../testOutput/good-06)
if [ -n "$diff_result" ]
then
       echo "Diff error TC-6"
	echo "$diff_result"
fi
echo "TC-6 end"

../src/src/wget -P good-07 --save-headers http://ss-www/index.html 2> TC7.log
if [ -f /tmp/log.txt ]
then
	echo "Log for TC-7"
	mv /tmp/log.txt log-TC7.txt
fi
diff_result=$(grep "Content-Type: text/html" good-07/index.html )
if [ -z "$diff_result" ]
then
       echo "Grep error TC-7"
fi
echo "TC-7 end"

../src/src/wget -P good-08 --save-headers --user=guest --password=guest http://ss-www/index.html  2> TC8.log
if [ -f /tmp/log.txt ]
then
	echo "Log for TC-8"
	mv /tmp/log.txt log-TC8.txt
fi
diff_result=$(grep "Content-Length: 574" good-08/index.html)
if [ -z "$diff_result" ]
then
       echo "Diff error TC-8"
fi
echo "TC-8 end"

../src/src/wget -P good-09 --header='Accept-Language: es' http://ss-www/images/cupcake.jpg  2> TC9.log
if [ -f /tmp/log.txt ]
then
	echo "Log for TC-9"
	mv /tmp/log.txt log-TC9.txt
fi
diff_result=$(diff good-09/cupcake.jpg ../testOutput/good-09/cupcake.jpg)
if [ -n "$diff_result" ]
then
       echo "Diff error TC-9"
       echo $diff_result
fi
echo "TC-9 end"

../src/src/wget -P good-10 --user=guest --password=guest http://ss-www/images/confessionbear.jpg  2> TC10.log
if [ -f /tmp/log.txt ]
then
	echo "Log for TC-10"
	mv /tmp/log.txt log-TC10.txt
fi
diff_result=$(diff good-10/confessionbear.jpg ../testOutput/good-10/confessionbear.jpg)
if [ -n "$diff_result" ]
then
       echo "Diff error TC-10"
       echo $diff_result
fi
echo "TC-10 end"

rm -R good-*
