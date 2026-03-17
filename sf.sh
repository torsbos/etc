#!/bin/sh
cat << EOF
.  ) )
.  ( (    $(date '+%T') 
. |~~~|]  $(uptime -p)
. \___/   bat: $(cat /sys/class/power_supply/BAT0/capacity)%
EOF
