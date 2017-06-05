#!/bin/bash
SSID=$(iwgetid -r)
if [ -z "$SSID" ]
then
    echo '<span foreground="#c12505">  Down</span>'
else
    echo '<span foreground="#1793d0">  ' "$SSID"'</span>'
fi
