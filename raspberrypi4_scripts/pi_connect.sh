#!/usr/bin/expect
# This script accesses the raspberry pi
# to start up a VNC server and exits out
# and sets up VNC viewer connection
# automatically.

set pass rpi@123
set IP 192.168.43.199
spawn ssh pi@$IP ./start_server.sh
expect "password"
send "$pass\r"
interact

spawn xtightvncviewer $IP:1
expect "*ssword:"
send "$pass\r"
interact
