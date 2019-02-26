#!/usr/bin/env bash

options="  Poweroff
  Reboot
  Logout
  Lock
  Cancel"
themes_dir=$HOME/.config/rofi/themes
theme=${1:-$themes_dir/powermenu.rasi}
selection=$(echo -e "${options}" | rofi -dmenu -p -theme themes/powermenu.rasi -normal-window)

echo "This is your selection: $selection"

case "${selection}" in
    "  Poweroff")
        systemctl poweroff -i;;
    "  Reboot")
        systemctl reboot;;
    "  Logout")
        bspc quit;;
    "  Lock")
        i3lock;;
    "  Cancel")
        exit;;
esac
