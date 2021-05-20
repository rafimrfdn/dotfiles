    case $( basename "$( tty )" ) in 
        tty1) 
                # Start WM 1 

#xrandr arandr 
xrandr --output LVDS1 --off --output DP1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output DP2 --off --output DP3 --off --output HDMI1 --off --output HDMI2 --off --output HDMI3 --off --output VGA1 --off --output VIRTUAL1 --off & 

# compositor
#picom -f &
compton --config /home/void/.config/compton.conf -b &

# wallpaper
~/.fehbg &
#nitrogen --restore &

#slstatus &
#dwm
while xsetroot -name "Hello Raf today is `date`" 
    do
    	sleep 1
    done &

# loop restart dwm without exit
while true;do
    dwm >/dev/null 2>&1
done

#execute dwm
#exec dwm
                exec dwm 

            ;; 

            tty2) 

                # Start WM 2 

                exec gnome-session 

            ;; 

        esac 
