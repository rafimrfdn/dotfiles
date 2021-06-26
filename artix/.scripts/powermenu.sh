#!/bin/bash

function powermenu {
    options="Cancel\nSleep\nRestart\nShutdown"
    selected=$(echo -e $options | dmenu)
    if [[ $selected = "Shutdown" ]]; then
        loginctl poweroff
    elif [[ $selected = "Restart" ]]; then
        loginctl reboot
    elif [[ $selected = "Sleep" ]]; then
        loginctl suspend
    elif [[ $selected = "Cancel" ]]; then
        return
    fi
    }
powermenu
