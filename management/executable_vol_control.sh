#!/bin/bash

while getopts ":idm" opt; do 
case ${opt} in 
	i )
		pamixer -i 5
		;;
	d )
		pamixer -d 5
		;;
	m )
		pamixer -t
		;;
esac

VOLUME="$(pamixer --get-volume "$DEFAULT_SINK")"
IS_MUTED="$(pamixer --get-mute)"
if [[ $VOLUME = 0 ]] || [[ $IS_MUTED = "true" ]]; then
	notify-send "Volume: muted" -r 2 
else
	notify-send "Volume: $VOLUME%" -r 2 -h int:value:$VOLUME 
fi

done
