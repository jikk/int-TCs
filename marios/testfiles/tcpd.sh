#!/bin/bash

cd /home/tm/sample/C-TCPD/testData
../src/tcpdump -t -n -r input/cap_dhcp.pcap 2> TC1.log > tc1
if [ -f /tmp/log.txt ]
then
	echo "Log for TC-1"
	mv /tmp/log.txt log-TC1.txt
fi
diff_result=$(diff tc1 ../testOutput/tcpdump-good-01-out.txt)
if [ -n "$diff_result" ]
then
       echo "Diff error TC-1"
	echo "$diff_result"
fi
echo "TC-1 end"

../src/tcpdump -A -t -n -r input/web.pcap  2> TC2.log > tc2
if [ -f /tmp/log.txt ]
then
	echo "Log for TC-2"
	mv /tmp/log.txt log-TC2.txt
fi
diff_result=$(diff tc2 ../testOutput/tcpdump-good-02-out-01.txt)
if [ -n "$diff_result" ]
then
	diff_result=$(diff tc2 ../testOutput/tcpdump-good-02-out-02.txt)
	if [ -n "$diff_result" ]
	then
       		echo "Diff error TC-2"
		echo "$diff_result"
	fi
fi
echo "TC-2 end"

../src/tcpdump -t -n -r input/cap_dhcp.pcap -F input/tcpdump-good-03-expr.txt 2> TC3.log > tc3
if [ -f /tmp/log.txt ]
then
	echo "Log for TC-3"
	mv /tmp/log.txt log-TC3.txt
fi
diff_result=$(diff tc3 ../testOutput/tcpdump-good-03-out.txt)
if [ -n "$diff_result" ]
then
       echo "Diff error TC-3"
	echo "$diff_result"
fi
echo "TC-3 end"

../src/tcpdump 'tcp port 80 and (((ip[2:2] - ((ip[0]&0xf)<<2)) - ((tcp[12]&0xf0)>>2)) != 0)' -t -n -r input/server.pcap  2> TC4.log > tc4
if [ -f /tmp/log.txt ]
then
	echo "Log for TC-4"
	mv /tmp/log.txt log-TC4.txt
fi
diff_result=$(diff tc4 ../testOutput/tcpdump-good-04-out-01.txt)
if [ -n "$diff_result" ]
then
	diff_result=$(diff tc4 ../testOutput/tcpdump-good-04-out-02.txt)
	if [ -n "$diff_result" ]
	then
       		echo "Diff error TC-4"
		echo "$diff_result"
	fi
fi
echo "TC-4 end"

../src/tcpdump 'icmp[icmptype] == icmp-echoreply' -t -n -r input/server.pcap 2> TC5.log > tc5
if [ -f /tmp/log.txt ]
then
	echo "Log for TC-5"
	mv /tmp/log.txt log-TC5.txt
fi
diff_result=$(diff tc5 ../testOutput/tcpdump-good-05-out.txt)
if [ -n "$diff_result" ]
then
       echo "Diff error TC-5"
	echo "$diff_result"
fi
echo "TC-5 end"

../src/tcpdump 'icmp[icmptype] == icmp-echo' -t -n -r input/server.pcap 2> TC6.log > tc6
if [ -f /tmp/log.txt ]
then
	echo "Log for TC-6"
	mv /tmp/log.txt log-TC6.txt
fi
diff_result=$(diff tc6 ../testOutput/tcpdump-good-06-out.txt)
if [ -n "$diff_result" ]
then
       echo "Diff error TC-6"
	echo "$diff_result"
fi
echo "TC-6 end"

../src/tcpdump host 91.189.92.202  -t -n -r input/apt_get_update.pcap  2> TC7.log > tc7
if [ -f /tmp/log.txt ]
then
	echo "Log for TC-7"
	mv /tmp/log.txt log-TC7.txt
fi
diff_result=$(diff tc7 ../testOutput/tcpdump-good-07-out-01.txt)
if [ -n "$diff_result" ]
then
	diff_result=$(diff tc7 ../testOutput/tcpdump-good-07-out-02.txt)
	if [ -n "$diff_result" ]
	then
       		echo "Diff error TC-7"
		echo "$diff_result"
	fi
fi
echo "TC-7 end"

../src/tcpdump host not 91.189.92.202  -t -n -r input/apt_get_update.pcap 2> TC8.log > tc8
if [ -f /tmp/log.txt ]
then
	echo "Log for TC-8"
	mv /tmp/log.txt log-TC8.txt
fi
diff_result=$(diff tc8 ../testOutput/tcpdump-good-08-out-01.txt)
if [ -n "$diff_result" ]
then
	diff_result=$(diff tc8 ../testOutput/tcpdump-good-08-out-02.txt)
	if [ -n "$diff_result" ]
	then
       		echo "Diff error TC-8"
		echo "$diff_result"
	fi
fi
echo "TC-8 end"

../src/tcpdump 'tcp[13] & 8!=0' -t -n -r input/web.pcap 2> TC9.log > tc9
if [ -f /tmp/log.txt ]
then
	echo "Log for TC-9"
	mv /tmp/log.txt log-TC9.txt
fi
diff_result=$(diff tc9 ../testOutput/tcpdump-good-09-out-01.txt)
if [ -n "$diff_result" ]
then
	diff_result=$(diff tc9 ../testOutput/tcpdump-good-09-out-02.txt)
	if [ -n "$diff_result" ]
	then
       		echo "Diff error TC-9"
		echo "$diff_result"
	fi
fi
echo "TC-9 end"

../src/tcpdump -nnvvXSs 1514 -t -n -r input/cap_dhcp.pcap 2> TC10.log > tc10
if [ -f /tmp/log.txt ]
then
	echo "Log for TC-10"
	mv /tmp/log.txt log-TC10.txt
fi
diff_result=$(diff tc10 ../testOutput/tcpdump-good-10-out.txt)
if [ -n "$diff_result" ]
then
       echo "Diff error TC-10"
	echo "$diff_result"
fi
echo "TC-10 end"

rm TC*
rm tc*
