#/bin/bash

timeswaylock=300   # 5 minutes in seconds
timeoff=360        # 6 minutes in seconds

# Run swayidle with specified commands
swayidle -w \
    timeout $timeswaylock 'if ! pgrep -x "mpv" >/dev/null; then swaylock -f; fi' \
    timeout $timeoff 'hyprctl dispatch dpms off' \
    resume 'hyprctl dispatch dpms on'
