#!/bin/bash
if [ "$(qdbus | grep -c org.mpris.MediaPlayer2.spotify)" == 0 ]
then
    echo ""
else
    TITLE=$(qdbus org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Metadata | grep title | cut -d " " -f2-)
    ARTIST=$(qdbus org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Metadata | grep artist | cut -d " " -f2-)
    if [[ -z $TITLE ]]
    then
        echo '   Spotify'
    else
        echo "   $ARTIST - $TITLE "
    fi
fi
