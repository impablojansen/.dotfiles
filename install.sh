#!/bin/bash

pacman -Syu --noconfirm xorg-xrandr git neovim polybar picom xorg-xrandr ttf-jetbrains-mono-nerd feh xclip maim docker docker-compose zsh fzf flatpak go gopls

flatpak install -y flathub org.onlyoffice.desktopeditors flathub org.kde.okular io.beekeeperstudio.Studio io.github.ungoogled_software.ungoogled_chromium

cp -r ~/.dotfiles/xorg.conf /etc/X11/
cp -r ~/.dotfiles/xorg.conf.d/ /etc/X11/
cp -r ~/.dotfiles/Xresources/.Xresources ~/
cp -r ~/.dotfiles/zshrc/.zshrc ~/
cp -r ~/.dotfiles/config/.config/i3 ~/.config/
cp -r ~/.dotfiles/config/.config/picom ~/.config/
cp -r ~/.dotfiles/config/.config/nvim ~/.config/
