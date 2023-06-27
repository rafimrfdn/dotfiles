# Here is Extra Minimal Gnome on Fedora configuration

Guys, you can run Gnome with very minimal configuration on Fedora. 

No more bloat software from Gnome. But you can still run Gnome on Wayland.

1. Install Fedora Workstation any version
2. Install "Minimal install" `sudo dnf group install "Minimal Install"`
3. Remove Fedora Workstation `sudo dnf group remove "Fedora Workstation" --skip-broken -x sudo`. Now all gnome software are gone (like Nautilus, Weather, Firefox etc)
4. Install [DWM](https://github.com/rafimrfdn/dwm)
5. Edit `.xinitrc` file like mine
6. Install zsh then put my `.zprofile` configuration
7. Install nvim then put my `init.vim` configuration
8. Install additional apps `dnf install pasystray pcmanfm kitty feh scrot polkit-gnome lxappearance gnome-tweaks pcmanfm shotwell`

You can also disable GDM (Gnome Display Manager) to get extra light Gnome-shell, but you cannot get the full Gnome experience (like screenshot, shortcuts, etc), just the desktop.

1. Disable gdm `systemctl disable gdm`
2. Edit `.zprofile` file, then add `exec dbus-run-session gnome-shell --wayland` to inside line tty2 to run Gnome+wayland without GDM.

## Preview

![Gnome Minimalist Fedora](https://github.com/rafimrfdn/dotfiles/blob/fedora/fedora-gnome-minimalist-mrfdn.png)
![Fedora run Gnome Minimalist no bloat](https://github.com/rafimrfdn/dotfiles/blob/fedora/gnome-fedora-minimalist-jagotekno.png)
![DWM on Fedora](https://github.com/rafimrfdn/dotfiles/blob/fedora/DWM-on-fedora-workstation.png)
