#!/bin/sh
cat << EOF
$(uptime | awk '{print $1,$2,$3}' | sed s#,##)
bat: $(cat /sys/class/power_supply/BAT0/capacity)%
EOF
