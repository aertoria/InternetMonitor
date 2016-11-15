#!/bin/bash
echo 'Ethernet defense system activated.'
while true;

do 
STR=`ping -c 1 google.com`; 
Success='1 packets received';
if [[ "$STR" == *"$Success"* ]]
then
	echo "Ethernet protecting service ... normal";
	sleep 0.2;
else
	echo "Ethernet failure incident captured, self-correct system activated...";
	ifconfig en0 down;
	ifconfig en0 up;
	sleep 5;
fi

done