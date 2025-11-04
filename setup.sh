#!/bin/bash

set -e

echo "Starting dotfiles setup..."
echo "This will create symlinks in your home directory"
echo 

# setup neovim
echo "Setting up neovim..."
stow -R nvim
echo "Neovim setup complete!"

# setup lazygit
echo "Setting up lazygit..."
stow -R lazygit
echo "Lazygit setup complete!"

# setup tmux
echo "Setting up tmux..."
stow -R tmux
TPM_DIR="$HOME/.config/tmux/plugins/tpm"
if [ ! -d "$TPM_DIR" ]; then
    echo "Installing TPM..."
    git clone https://github.com/tmux-plugins/tpm "$TPM_DIR"
else
    echo "TPM already installed."
fi
echo "Tmux setup complete! Start tmux and press Prefix + I to install plugins."

echo
echo "Dotfiles setup complete!"
