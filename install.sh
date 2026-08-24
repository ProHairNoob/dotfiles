#!/usr/bin/bash
sudo -v
sudo pacman -Syu
sudo pacman -Sy hyprland nvim waybar fish awww kitty tmux nemo rofi network-manager-applet hyprpolkitagent base-devel hyprlock gtk3 gtk4 qt6ct superfile zoxide pavucontrol papirus-icon-theme
echo ""
read -p "Install yay? <y/N> " prompt
if [[ $prompt == "y" || $prompt == "Y" || $prompt == "yes" || $prompt == "Yes" ]]
then
  	git clone https://aur.archlinux.org/yay.git
	cd yay
	makepkg -si 
	yay -S bibata-cursor-theme-bin xembedsniproxy grimblast
	cd ..
fi

echo "moving configuration files"
cp -r ./.gitattributes ~/
cp -r ./.config/fish ~/.config/
cp -r ./.config/kitty ~/.config/
cp -r ./.config/hypr ~/.config/
cp -r ./.config/waybar ~/.config/
cp -r ./.config/nvim ~/.config/
cp -r ./Pictures ~/Pictures

read -p "Logout? <y/N> " prompt
if [[ $prompt == "y" || $prompt == "Y" || $prompt == "yes" || $prompt == "Yes" ]]
then
	pkill -u $USER
fi

