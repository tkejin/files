#!/bin/sh
ps -fe|grep ss5 |grep -v grep
if [ $? -ne 0 ]
then
echo "s5 was stoped" >> /root/s5.log
echo "$(date +%F%n%T)" >> /root/s5.log
sh /etc/rc.d/init.d/ss5 restart
echo "s5 is runing" >> /root/s5.log
ps -ef | grep ss5 >> /root/s5.log
echo "***********************" >> /root/s5.log
fi

