#!/bin/bash
SSID=$(iwgetid -r wlan0)
if [ -z "$SSID" ]
then
    echo '<span foreground="#f23232">  Down</span>'
else
    echo '<span foreground="#00a6ed">  ' "$SSID"'</span>'
fi
