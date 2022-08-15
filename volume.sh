#!/bin/bash
if [ $(pamixer --get-mute) == "true" ]
then
    echo '<span foreground="#f23232"> </span>'
else
    echo '<span foreground="#84bcda">   '"$(pamixer --get-volume)"'%</span>'
fi
