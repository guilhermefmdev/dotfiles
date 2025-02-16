#!/bin/bash

while getopts ":id" opt; do 
case ${opt} in 
	i )
		light -A 10
		;;
	d )
		LIGHT="$(light)"
		INT_LIGHT="${LIGHT%.*}"
		if [[ $INT_LIGHT -ge 20 ]]; then
			light -U 10
		fi
		;;
esac

LIGHT="$(light)"
INT_LIGHT=${LIGHT%.*}
notify-send -h int:value:$INT_LIGHT "☀️ Brightness" -r 1

done
