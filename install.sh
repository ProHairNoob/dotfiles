#!/usr/bin/bash
sudo -v

sudo pacman -Syu hyprland nvim waybar fish awww kitty tmux nemo grimblast rofi nm-applet hyprpolkitagent base-devel hyprlock gtk3 gtk4 qt6ct spf
echo ""
read -p "Install yay? <y/N> " prompt
if [[ $prompt == "y" || $prompt == "Y" || $prompt == "yes" || $prompt == "Yes" ]]
then
  	git clone https://aur.archlinux.org/yay.git
	makepkg -si 
	yay -S bibata-cursor-theme-bin xembedsniproxy
else
  exit 0
fi



