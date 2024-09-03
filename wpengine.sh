#!/usr/bin/env sh

export STATUS_FILE="$XDG_RUNTIME_DIR/WPENGINE.status"

enable_wpengine() {
    printf "true" >"$STATUS_FILE"
   #notify-send -u normal "Enabling wpengine"
    linux-wallpaperengine --scaling fill --screen-root eDP-2 2311192580
}

disable_wpengine() {
    printf "false" >"$STATUS_FILE"
    #notify-send -u normal "Disabling wp engine"
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

