#!/usr/bin/env sh

dconf reset -f /org/gnome/desktop/

gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark' 

gsettings set org.gnome.desktop.a11y always-show-universal-access-status true
