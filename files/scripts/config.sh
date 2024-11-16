#!/usr/bin/env bash

# Tell build process to exit if there are any errors.
set -oue pipefail

# Define variables for the source and link paths
DOTFILES_DIR="$HOME/config"
CONFIG_DIR="$HOME/.config"

# Create the configuration directory if it doesn't exist
mkdir -p "$CONFIG_DIR"

# Create the symbolic link
ln -sf "$DOTFILES_DIR" "$CONFIG_DIR"

echo "Symbolic link created from $DOTFILES_DIR to $CONFIG_DIR"
