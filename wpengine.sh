#!/usr/bin/env sh

export STATUS_FILE="$XDG_RUNTIME_DIR/WPENGINE.status"

enable_wpengine() {
    printf "true" >"$STATUS_FILE"
   #notify-send -u normal "Enabling virtual keyboard"
    linux-wallpaperengine --scaling fill --screen-root eDP-2 1811167820
}

disable_wpengine() {
    printf "false" >"$STATUS_FILE"
    #notify-send -u normal "Disabling virtual keyboard"
    killall linux-wallpaperengine
}

if ! [ -f "$STATUS_FILE" ]; then
  enable_wpengine
else
  if [ $(cat "$STATUS_FILE") = "true" ]; then
    disable_wpengine   
  elif [ $(cat "$STATUS_FILE") = "false" ]; then
    enable_wpengine
  fi
fi

