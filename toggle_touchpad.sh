#!/usr/bin/env bash

export STATUS_FILE="$XDG_RUNTIME_DIR/Touchpad.status"

enable_Touchpad() {
    printf "true" >"$STATUS_FILE"
    notify-send -u normal "Enabling Touchpad"
    hyprctl keyword '$LAPTOP_TP_ENABLED' "true" -r
}

disable_Touchpad() {
    printf "false" >"$STATUS_FILE"
    notify-send -u normal "Disabling Touchpad"
    hyprctl keyword '$LAPTOP_TP_ENABLED' "false" -r
}

if ! [ -f "$STATUS_FILE" ]; then
  enable_Touchpad
else
  if [ $(cat "$STATUS_FILE") = "true" ]; then
    disable_Touchpad
  elif [ $(cat "$STATUS_FILE") = "false" ]; then
    enable_Touchpad
  fi
fi
