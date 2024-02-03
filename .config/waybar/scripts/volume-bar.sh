#!/bin/bash

while true
do
    # Get Master volume percentage using amixer
    volume=$(amixer get Master | grep -oP "\d+%" | head -n1)
    if [[ $volume == "0%" ]]; then
        json_output="{ \"text\": \" $volume\", \"tooltip\": \"Volume\", \"class\": \"custom-volume\" }"
    else
        json_output="{ \"text\": \" $volume\", \"tooltip\": \"Volume\", \"class\": \"custom-volume\" }"    
    fi
    echo $json_output
done


