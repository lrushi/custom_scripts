#!/usr/bin/env sh

#//making all scripts executable
chmod +x *.sh


#//copy zshrc
cp zshrc $HOME/.zshrc #copy zshrc

#//copy kitty.conf
cp kitty.conf $HOME/.config/kitty/kitty.conf

#//copy userprefs.conf for hyprland
cp userprefs.conf $HOME/.config/hypr/userprefs.conf


#//copy virtual keyboard module
cp vkbd.jsonc $HOME/.config/waybar/modules/vkbd.jsonc


#//copy waybar layouts for vkbd
cp config.ctl $HOME/.config/waybar/config.ctl

#//copy MangoHud
cp MangoHud.conf $HOME/.var/app/com.valvesoftware.Steam/config/MangoHud/MangoHud.conf
cp MangoHud.conf  $HOME/.config/MangoHud/MangoHud.conf
