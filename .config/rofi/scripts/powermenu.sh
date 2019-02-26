#!/usr/bin/env bash

# to edit themes in place with live reload:

# ag -l | entr -r $HOME/.config/rofi/scripts/on
# use -normal-window flag on rofi if you want to not have to close rofi to get
# back to your editor.
# https://www.reddit.com/r/qtools/comments/amswu9/autoloading_rofi_for_quick_themeing_experience/

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
