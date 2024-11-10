#!/usr/bin/env bash

# Tell build process to exit if there are any errors.
set -oue pipefail

pkgver=0.7.3
theme=hyprland

cp -r /usr/etc/hyprland/* ~/.config/hypr
