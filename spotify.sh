#!/bin/bash
if (busctl --user list | grep org.mpris.MediaPlayer2.spotify)
then
    DATA=$(busctl --user get-property org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player Metadata --json=short)
    TITLE=$(echo $DATA | jq '.data["xesam:title"].data' -r)
    ARTIST=$(echo $DATA | jq '.data["xesam:artist"].data[0]' -r)
    if [[ -z $TITLE ]]
    then
        echo '   Spotify'
    else
        echo "   $ARTIST - $TITLE "
    fi
else
    echo ""
fi
