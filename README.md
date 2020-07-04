# dotfiles
My dotfiles

## Installation

```sh
git clone https://github.com/alan-pnv/dotfiles.git
cp -r i3 terminator $HOME/.config
sudo cp -r lightdm.conf  lightdm-webkit2-greeter.conf /etc/lightdm
chmod +x $HOME/.config/i3/scripts/*
```

## Packages to be installed

### pacman packages
i3-wm i3blocks terminator feh compton acpi lightdm rofi lightdm-webkit2-greeter 
### AUR packages
i3lock-color-git lightdm-webkit-theme-aether 
### optional pacman
flameshot
