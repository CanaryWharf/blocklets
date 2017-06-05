#!/bin/bash
if [ $(amixer get Master | grep -c off) == "2" ]
then
    echo '<span foreground="#c12505">   </span>'
else
    echo '<span foreground="#1793d0">   '"$(amixer get Master | grep -Po "[0-9]+(?=%)" | tail -1)"'%</span>'
fi
