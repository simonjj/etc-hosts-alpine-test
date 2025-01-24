#!/bin/sh
echo "adding myhosts to /etc/hosts"
cat /root/myhosts >> /etc/hosts
cat /etc/hosts

while true
do
	sleep 10
	echo `date`
	cat /etc/hosts
	echo "---------"
done
