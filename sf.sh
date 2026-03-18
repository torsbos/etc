#!/bin/sh
cat << EOF
.
.  ) )    $(date '+%T (%d/%m)') 
.  ( (
. |~~~|]  up   $(uptime -p | sed s.up\ ..)
. \___/   bat  $(cat /sys/class/power_supply/BAT0/capacity)% ($(cat /sys/class/power_supply/BAT0/status))
.
EOF
