#!/bin/bash

function powermenu {
    options="Cancel\nLogOut\nSleep\nRestart\nShutdown"
    selected=$(echo -e $options | rofi -dmenu)
    if [[ $selected = "Shutdown" ]]; then
        systemctl poweroff
    elif [[ $selected = "Restart" ]]; then
        systemctl reboot
    elif [[ $selected = "Sleep" ]]; then
        systemctl suspend
    elif [[ $selected = "LogOut" ]]; then
        pkill -KILL -u $USER
    elif [[ $selected = "Cancel" ]]; then
        return
    fi
    }
powermenu
