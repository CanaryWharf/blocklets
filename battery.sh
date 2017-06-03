#!/bin/bash
LEVEL=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep -Po "[0-9]+(?=%)" | head -1)
STATUS=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep state | grep -c discharging)
if [ $STATUS == 0 ]
then
    echo '<span foreground="#1793d0">   '"$LEVEL"'%</span>'
else
    if [ $LEVEL < 20 ]
    then
        echo '<span foreground="#c12505">  ' "$LEVEL" '%</span>'
    else
        echo "  $LEVEL%"
    fi
fi
