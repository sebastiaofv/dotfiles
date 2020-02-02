#!/usr/bin/env bash

screenshot="/tmp/i3lockscrennshot.png"

# Avatar image here ...
lockicon=""

(( $# )) && { icon=$1; }

scrot "$screenshot"
convert "$screenshot" -scale 10% -scale 1000% "$screenshot"
#convert "$screenshot" "$lockicon" -gravity center -composite -matte "$screenshot"
i3lock -u -i "$screenshot"
rm "$screenshot"
