#!/bin/sh
echo "pulling remote hosts file"
ping -c 1 raw.githubusercontent.com
cd /root
wget https://raw.githubusercontent.com/simonjj/etc-hosts-alpine-test/refs/heads/main/myhosts
echo "adding myhosts to /etc/hosts"
cat /root/myhosts >> /etc/hosts
cat /etc/hosts

while true
do
	sleep 10
	echo `date`
	wget https://raw.githubusercontent.com/simonjj/etc-hosts-alpine-test/refs/heads/main/myhosts
	cat /etc/hosts
	echo "---------"
done
