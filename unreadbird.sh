#PROFILE=$(awk -F "=" '/Path/ {print $2}' ~/.thunderbird/profiles.ini)
COUNT=$(awk -F ":" '{print $1}' ~/.thunderbird/n7gbyd3c.default/unread-counts | paste -s -d+ | bc )
if [ $COUNT == 0 ]
then
    echo ""
else
    echo '<span foreground="#ff9f1c">   '"$COUNT"'</span>' 
fi
