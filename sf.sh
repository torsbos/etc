#!/bin/bash

uptime=$(uptime -p | sed s/up//)
os=$(cat /etc/os-release | grep PRETTY_NAME | awk -F'"' '{print $2}')
kernel=$(uname -r)
bat_percent=$(cat /sys/class/power_supply/BAT0/capacity)
bat_status=$(cat /sys/class/power_supply/BAT0/status)

cat <<EOF
         $USER@$HOSTNAME
  ( (    os:       $os
  ) )    kernel:   $kernel
 |~~~|]  uptime:  $uptime
 \___/   battery:  $bat_percent% ($bat_status)

EOF
