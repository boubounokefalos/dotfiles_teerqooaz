#!/usr/bin/env bash

# to edit themes in place with live reload:

# ag -l | entr -r $HOME/.config/rofi/scripts/on
# use -normal-window flag on rofi if you want to not have to close rofi to get
# back to your editor.
# https://www.reddit.com/r/qtools/comments/amswu9/autoloading_rofi_for_quick_themeing_experience/

options="0%
10%
20%
30%
40%
50%
60%
70%
80%
90%
100%"
themes_dir=$HOME/.config/rofi/themes
theme=${1:-$themes_dir/powermenu.rasi}
selection=$(echo -e "${options}" | rofi -dmenu -p -theme themes/audio.rasi -location 3 -xoffset -50 -yoffset 38)

echo "This is your selection: $selection"

case "${selection}" in
    "0%")
        amixer -D pulse sset Master 0%;;
    "10%")
        amixer -D pulse sset Master 10%;;
    "20%")
        amixer -D pulse sset Master 20%;;
    "30%")
        amixer -D pulse sset Master 30%;;
    "40%")
        amixer -D pulse sset Master 40%;;
    "50%")
        amixer -D pulse sset Master 50%;;
    "60%")
        amixer -D pulse sset Master 60%;;
    "70%")
        amixer -D pulse sset Master 70%;;
    "80%")
        amixer -D pulse sset Master 80%;;
    "90%")
        amixer -D pulse sset Master 90%;;
    "100%")
        amixer -D pulse sset Master 100%;;
esac