#!/bin/bash
ALPHA=$(upower --battery | grep percentage | grep -Po "[0-9.]+(?=%)")
# BRAVO=$(upower -i /org/freedesktop/UPower/devices/battery_BAT1 | grep -Po "[0-9.]+(?=%)" | head -1)
STATUS=$(upower --battery | grep state | grep -c discharging)
LEVEL=$((ALPHA + BRAVO))
TEXT="$LEVEL"
if [ "$STATUS" == 0 ]
then
    echo "<span foreground=\"#31e26c\">   $TEXT</span>"
else
    if [ $LEVEL -lt 20 ]
    then
        echo "<span foreground=\"#f23232\">   $TEXT</span>"
        if [ $LEVEL -lt 10 ]
        then
            notify-send -i "/usr/share/icons/Arc/status/128@2x/dialog-error.png" "Get the bloody charger, you twat"
        fi
    else
        echo "<span foreground=\"#1be7ff\">   $TEXT</span>"
    fi
fi
