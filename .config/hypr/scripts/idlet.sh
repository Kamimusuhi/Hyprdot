#!/bin/bash

timeswaylock=300
timeoff=320

swayidle -w \
  timeout $timeswaylock '[ "$(waybarctl --get-config=idle_inhibitor.idle_pause_toggle)" != "true" ] && swaylock -f' \
  timeout $timeoff 'hyprctl dispatch dpms off' \
  resume 'hyprctl dispatch dpms on'
