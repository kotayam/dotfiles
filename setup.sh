#!/bin/bash

set -e

echo "Starting dotfiles setup..."
echo "This will create symlinks in your home directory"

# setup neovim
stow -R nvim

echo "Dotfiles setup complete!"
