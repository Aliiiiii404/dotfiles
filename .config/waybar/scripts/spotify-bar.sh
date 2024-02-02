#!/bin/bash

while true
do
    # player status
    player_status=$(playerctl status 2> /dev/null)
    if [ "$player_status" = "Playing" ]; then
        artist=$(playerctl metadata --format "{{ artist }}")
        title=$(playerctl metadata --format "{{ title }}")
        echo '{"text": "'"$artist - $title"'", "class": "custom-spotify", "alt": "Spotify"}'
    elif [ "$player_status" = "Paused" ]; then
        artist=$(playerctl metadata --format "{{ artist }}")
        title=$(playerctl metadata --format "{{ title }}")
        echo '{"text": "'"Paused"'", "class": "custom-spotify", "alt": "Spotify (Paused)"}'
    fi
done
