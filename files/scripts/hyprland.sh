#!/usr/bin/env bash

# Tell build process to exit if there are any errors.
set -oue pipefail

pkgver=0.7.3
theme=blupr

mkdir -p ~/.config/hypr/
cp -f /usr/etc/hyprland/hyprland.conf ~/.config/hypr/

cp -f /usr/etc/hyprland/bluprdark.png ~/.config/hypr/

cp -f /usr/etc/hyprland/hyprpaper.conf ~/.config/hypr/

