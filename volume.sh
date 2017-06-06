#!/bin/bash
if [ $(amixer get Master | grep -c off) == "2" ]
then
    echo '<span foreground="#f23232">   </span>'
else
    echo '<span foreground="#84bcda">   '"$(amixer get Master | grep -Po "[0-9]+(?=%)" | tail -1)"'%</span>'
fi
