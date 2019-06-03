#!/bin/sh
#  set timezone
#
# delete localtime
rm /etc/localtime
#
# link correct timezone to localtime
ln -s /usr/share/zoneinfo/Europe/Oslo /etc/localtime
if [ $? -eq 0 ]
   then 
        #create file to indicate that timezone is set
        touch /opt/ansible/status/timezone.ok
    fi 

