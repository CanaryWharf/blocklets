#!/bin/bash
if [ $(qdbus | grep -c org.mpris.MediaPlayer2.clementine) == 0 ]
then
    echo ""
else
    METADATA="qdbus org.mpris.MediaPlayer2.clementine /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Metadata"
    TITLE=$($METADATA | grep title | cut -d " " -f2-)
    ARTIST=$($METADATA | grep artist | cut -d " " -f2-)
    if [ -z $TITLE ]
    then
        echo '   Clementine'
    else
        echo "   $ARTIST - $TITLE "
    fi
fi
