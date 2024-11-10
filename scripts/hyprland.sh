#!/usr/bin/env bash

# Tell build process to exit if there are any errors.
set -oue pipefail

pkgver=0.7.3
theme=blupr

wget https://github.com/visnudeva/blupr/tree/main/files/config/hyprland/hyprland.conf
cp -f hyprland.conf ~/.config/hypr/
rm -rf hyprland.conf*

wget https://github.com/visnudeva/blupr/tree/main/files/config/hyprland/bluprdark.png
cp -f bluprdark.png ~/.config/hypr/
rm -rf bluprdark.png*

wget https://github.com/visnudeva/blupr/tree/main/files/config/hyprland/hyprpaper.conf
cp -f hyprpaper.conf ~/.config/hypr/
rm -rf hyprpaper.conf*
