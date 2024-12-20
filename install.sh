#!/bin/bash

pacman -Syu --noconfirm xorg-xrandr neovim polybar picom xorg-xrandr ttf-jetbrains-mono-nerd feh xclip maim docker docker-compose zsh fzf flatpak go gopls

flatpak install -y flathub org.onlyoffice.desktopeditors flathub org.kde.okular io.beekeeperstudio.Studio io.github.ungoogled_software.ungoogled_chromium

cp -r ./xorg.conf /etc/X11/
cp -r ./xorg.conf.d/ /etc/X11/
