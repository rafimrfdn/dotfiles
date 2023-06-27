#!/bin/bash

function powermenu {
    options="Cancel\nLogout\nSleep\nRestart\nShutdown"
    selected=$(echo -e $options | rofi -dmenu)
    if [[ $selected = "Shutdown" ]]; then
        loginctl poweroff
    elif [[ $selected = "Restart" ]]; then
        loginctl reboot
    elif [[ $selected = "Sleep" ]]; then
        loginctl suspend
    elif [[ $selected = "Logout" ]]; then
       pkill -KILL -u $USER 
    elif [[ $selected = "Cancel" ]]; then
        return
    fi
    }
powermenu
