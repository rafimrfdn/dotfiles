# My Arch Dotfile

hello everybody, this is my configuration for ArchLinux, just copy and paste it and you will be happy.

I run Arch with **Sway WM**.

After you install Arch linux, make sure you install this apps.

```sh
pacman -S sudo networkmanager gcc pipewire pipewire-pulse pipewire-audio nvim volumeicon gvfs udisks2 xorg xdg-user-dirs kitty firefox chromium network-manager-applet git nemo sway waybar ly bluez bluez-utils blueman file-roller telegram-desktop sqlite3 jq tldr tmux apache cmake lua nodejs npm corepack hugo mpv zsh
```

After that copy my dotfiles to desired directory you wanted, simply to `~/.config/` folder.

Please read every line of my config if you don't want to break your own configuration.

> Note:
> In this configuration I set `arch` as username. 


## addition for MPV

```bash
https://github.com/tomasklaen/uosc
```

reference [https://github.com/silentz/arch-linux-install-guide](https://github.com/silentz/arch-linux-install-guide)


## important apps

```sh
$ sudo pacman -S xorg xorg-apps xorg-xinit xorg-xlsfonts xdotool xclip xsel dbus intel-ucode fuse2 lshw powertop inxi acpi base-devel git bash-completion iw wpa_supplicant wget rsync mesa vulkan-intel brightnessctl neofetch
```

## install AUR

```sh
$ pacman -S --needed git base-devel
$ git clone https://aur.archlinux.org/yay.git
$ cd yay
$ makepkg -si
```

usage

```sh
$ yay -S ttf-ms-fonts swayfx
```

## window manager (sway)

Recommended to install sway from AUR (yay). Swayfx has better handling and effect than sway original.

```sh
$ yay -S swayfx
```

Then install the rest package of what sway needed.

```sh
$ pacman -S waybar swaybg grim slurp wl-clipboard wofi mako jq 
```

## fonts

```sh
$ pacman -S noto-fonts-emoji ttf-ubuntu-font-family ttf-roboto ttf-roboto-mono noto-fonts-cjk ttf-jetbrains-mono-nerd ttf-nerd-fonts-symbols
```

## bluetooth

### install package

```sh
$ pacman -S bluez bluez-utils blueman
```
### activate bluetooth

```sh
$ sudo systemctl enable bluetooth.service
```

## display manager

### install package

```sh
$ pacman -S ly
```
### activate 

```sh
$ sudo systemctl enable ly
```

## audio with pipewire

### install package

```sh
$ sudo pacman -S pipewire pipewire-pulse pipewire-audio
```

## themes

```sh
$ sudo pacman -S capitaine-cursors papirus-icon-theme 
```


## additional apps for work

```sh
$ sudo pacman -S neovim fd ripgrep tree-sitter tree-sitter-cli nemo file-roller ffmpegthumbnailer mpv zip unzip tree chromium telegram-desktop starship gimp inkscape gparted nodejs npm pnpm hugo  sqlite3 tldr tmux apache lua udisks2 gvfs xdg-user-dirs kitty network-manager-applet nwg-look eog sqlitebrowser pdfarranger 
```

