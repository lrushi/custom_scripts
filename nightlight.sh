#!/usr/bin/env sh

export STATUS_FILE="$XDG_RUNTIME_DIR/NIGHTLIGHT.status"

enable_nl() {
    printf "true" >"$STATUS_FILE"
   #notify-send -u normal "Enabling Night Light"
    wlsunset on #hyderabad
}

disable_nl() {
    printf "false" >"$STATUS_FILE"
    #notify-send -u normal "Disabling Night Light"
    killall wlsunset
}

if ! [ -f "$STATUS_FILE" ]; then
  enable_nl    
else
  if [ $(cat "$STATUS_FILE") = "true" ]; then
    disable_nl    
  elif [ $(cat "$STATUS_FILE") = "false" ]; then
    enable_nl    
  fi
fi

