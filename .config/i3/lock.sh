#!/bin/bash
#SCREEN=/tmp/screen.png
#scrot $SCREEN
#convert $SCREEN -scale 10% -scale 1000% $SCREEN
#[[ -f $1 ]] && convert $SCREEN $1 -gravity center -composite -matte $SCREEN
dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Stop
#i3lock -u -i $SCREEN
#rm $SCREEN
i3lock -c 333333
feh --randomize --bg-fill ~/.local/share/backgrounds/*
