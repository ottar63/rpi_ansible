#!/bin/bash
#
# Changed default keyboard
raspi-config nonint do_configure_keyboard no
if [ $? -eq 0 ]
then
        touch /opt/ansible/status/keyboard.ok
fi
