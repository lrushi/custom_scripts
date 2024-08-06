#!/usr/bin/env sh
asusctl profile -n && notify-send -i  "Power profile changed" "$(asusctl profile -p)"
