### Things Used

- **OS** : [Asahi Linux](https://asahilinux.org/) with [Arch Linux](https://archlinux.org/)(ARM aarch64)
- **Window Manager** : [Hyprland](https://github.com/hyprwm/Hyprland)
- **Terminal** : [Kitty](https://github.com/kovidgoyal/kitty)
- **Shell** : [Zsh](https://www.zsh.org/) with [ohmyzsh](https://github.com/ohmyzsh/ohmyzsh)
- **Bar** : [Waybar](https://github.com/Alexays/Waybar)
- **Launcher** : [Wofi](https://hg.sr.ht/~scoopta/wofi)
- **File Manager** : [Ranger](https://github.com/ranger/ranger) 
- **Network Manager** : [rofi-network-manager](https://github.com/P3rf/rofi-network-manager)
- **Wallpaper** : [swww](https://github.com/Horus645/swww)
- **Lock** : [Swaylock](https://github.com/swaywm/swaylock)
- **Notification daemon** : [Dunst](https://github.com/dunst-project/dunst)
- **IDE** : [Neovim](https://github.com/neovim/neovim) with [personal config](https://github.com/Aliiiiii404/Neovim-config/tree/main)
- **Music** : [Spotifyd](https://github.com/Spotifyd/spotifyd) with [Spt(Spotify TUI)](https://github.com/Rigellute/spotify-tui)

### New Waybar
![Image Alt Text](https://github.com/Aliiiiii404/dotfiles/blob/main/screenshots/waybar-1.png)
![Image Alt Text](https://github.com/Aliiiiii404/dotfiles/blob/main/screenshots/waybar-2.png)
![Image Alt Text](https://github.com/Aliiiiii404/dotfiles/blob/main/screenshots/waybar-3.png)

### Demo
https://github.com/Aliiiiii404/dotfiles/assets/73275543/5fffd947-3edb-40d2-8da9-3576eaaea83c

### ScreenShots
<p align="center">
    <img align="center" width="49%" src="https://github.com/Aliiiiii404/dotfiles/blob/main/screenshots/1.png" /> <img align="center" width="49%" src="https://github.com/Aliiiiii404/dotfiles/blob/main/screenshots/3.png" />
    <img align="center" width="49%" src="https://github.com/Aliiiiii404/dotfiles/blob/main/screenshots/4.png" /> <img align="center" width="49%" src="https://github.com/Aliiiiii404/dotfiles/blob/main/screenshots/5.png" />
</p>

### Installation

#### installing Hyprland on Asahi linux using legacyrenderer : 
```bash
git clone https://aur.archlinux.org/hyprland-legacyrenderer.git
cd hyprland-legacyrenderer
makepkg -si
sudo pacman -Sy
sudo grub-mkconfig -o /boot/grub/grub.cfg
reboot
```
#### installing the dotfiles : 
```bash
git clone https://github.com/Aliiiiii404/dotfiles ~/dotfiles
cp -r ~/dotfiles/.config/* ~/.config/
```

### Inspirations
This is my first time working on Hyprland, so I looked through a lot of the dotfiles in Hyprland's topics to get inspiration. Here are some; I don't remember all of them, so I'll add them when I find them.

[prasanthrangan](https://github.com/prasanthrangan/hyprdots) - [linuxmobile](https://github.com/linuxmobile/hyprland-dots) - [1amSimp1e](https://github.com/1amSimp1e/dots) - [m4xshen](https://github.com/m4xshen/dotfiles)


