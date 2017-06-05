#!/bin/bash
LEVEL=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep -Po "[0-9]+(?=%)" | head -1)
STATUS=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep state | grep -c discharging)
if [ $STATUS == 0 ]
then
    echo '<span foreground="#1793d0">   '"$LEVEL"'%</span>'
else
    if [ $LEVEL -lt 20 ]
    then
        echo '<span foreground="#c12505">  ' "$LEVEL"'%</span>'
        if [ $LEVEL -lt 5 ]
        then
            if mkdir ~/hiberlock;
            then
                notify-send "You could have stopped this" -u critical
                sleep 10
                rm ~/hiberlock
                shutdown now
            fi
        fi
    else
        echo "   $LEVEL% "
    fi
fi
