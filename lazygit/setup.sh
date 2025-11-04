#!/bin/bash

set -e

CONFIG_DIR="$HOME/.config/lazygit"

echo "Creating config directory..."
mkdir -p "$CONFIG_DIR"

echo "Linking config.yml"
ln -sf "$(pwd)/config.yml" "$CONFIG_DIR/config.yml"

echo "Completed Successfully!"

