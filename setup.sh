#!/bin/bash

set -e

CONFIG_DIR="$HOME/.config/tmux"
TPM_DIR="$CONFIG_DIR/plugins/tpm"

echo "Creating config directory..."
mkdir -p "$CONFIG_DIR"

echo "Linking tmux.conf..."
ln -sf "$(pwd)/tmux.conf" "$CONFIG_DIR/tmux.conf"

if [ ! -d "$TPM_DIR" ]; then
    echo "Installing TPM..."
    git clone https://github.com/tmux-plugins/tpm "$TPM_DIR"
else
    echo "TPM already installed."
fi

echo "Done. Now start tmux and press prefix + I to install plugins."
