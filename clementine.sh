#!/bin/bash
if [ $(qdbus | grep -c org.mpris.clementine) == 0 ]
then
    echo ""
else
    TITLE=$(qdbus org.mpris.clementine /Player org.freedesktop.MediaPlayer.GetMetadata | grep title | cut -d " " -f2-)
    ARTIST=$(qdbus org.mpris.clementine /Player org.freedesktop.MediaPlayer.GetMetadata | grep artist | cut -d " " -f2-)
    if [ -z $TITLE ]
    then
        echo 'Clementine'
    else
        echo "$ARTIST - $TITLE "
    fi
fi
