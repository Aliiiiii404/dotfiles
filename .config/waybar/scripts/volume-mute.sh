#!/bin/bash

# Get Master volume information using amixer
volume_info=$(amixer get Master)

# Check if the volume is currently muted
if [[ $volume_info == *"[0%]"* ]]; then
    # If muted, unmute the volume
    amixer set Master 50%+
else
    # If not muted, mute the volume
    amixer set Master 100%-
fi
