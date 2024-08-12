#!/bin/bash

# Check if Steam is running
if pgrep -x "steam" > /dev/null
then
    hyprctl notify 1 1200 "rgb(3B4252)" "fontsize:35  Killing Steam"
    pkill -x "steam"
else
    hyprctl notify 1 1200 "rgb(3B4252)" "fontsize:35  Starting Steam"
    steam &
fi
