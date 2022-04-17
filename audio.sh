#!/bin/sh


player_status=$(playerctl status 2> /dev/null)

parser(){
    echo "$1" "$2"
}

if [ "$player_status" = "Playing" ]; then
    echo $(playerctl metadata title) | awk '{print $1, $2, $3}'
elif [ "$player_status" = "Paused" ]; then
    # echo "$(playerctl metadata artist) - $(playerctl metadata title)"
    echo $(playerctl metadata title) | awk '{print $1, $2, $3}'
else
    echo $(bash quote.sh)
fi



