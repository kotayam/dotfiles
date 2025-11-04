#!/bin/bash

set -e

echo "Starting dotfiles setup..."
echo "This will create symlinks in your home directory"
echo "..."

# setup neovim
stow -R nvim

# setup lazygit
stow -R lazygit

echo "Dotfiles setup complete!"
