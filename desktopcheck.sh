#!/bin/bash
COUNT=$(ls -1 ~/Desktop | wc -l)
if [ $COUNT == 0 ]
then
    echo ""
else
    echo "   $COUNT"
fi
