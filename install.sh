#!/bin/bash

set -e

install_fedora() {
    echo "Installing packages for Fedora..."

    echo "- Enabling copr for lazygit..."
    sudo dnf copr enable dejan/lazygit

    echo "- Installing packages..."
    sudo dnf install -y stow tmux lazygit neovim
}

install_ubuntu() {
    echo "Installing packages for Ubuntu..."
    sudo apt update

    echo "- Installing lazygit..."
    LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | \grep -Po '"tag_name": *"v\K[^"]*')
    curl -Lo $HOME/lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/download/v${LAZYGIT_VERSION}/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
    tar xf $HOME/lazygit.tar.gz -C $HOME lazygit
    sudo install $HOME/lazygit -D -t /usr/local/bin/

    echo "- Installing neovim..."
    sudo apt remove -y neovim
    curl -Lo $HOME/nvim-linux-x86_64.appimage "https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.appimage"
    chmod u+x $HOME/nvim-linux-x86_64.appimage
    mkdir -p $HOME/.local/bin
    mv $HOME/nvim-linux-x86_64.appimage $HOME/.local/bin/nvim

    echo "- Installing rest of packages..."
    sudo apt install -y stow tmux
}

print_usage() {
    echo "Usage: $0 [ARGUMENT]"
    echo
    echo "  No argument: Auto-detects OS and installs."
    echo
    echo "  Arguments:"
    echo "    fedora      Force install using 'dnf'."
    echo "    ubuntu      Force install using 'apt'."
    echo "    -h, --help  Show this help message."
}

OS_OVERRIDE=""
if [ -n "$1" ]; then
    if [[ "$1" == "-h" || "$1" == "--help" ]]; then
        print_usage
        exit 0
    fi
    OS_OVERRIDE="$1"
fi

# Use the override if provided, otherwise auto-detect
if [ -n "$OS_OVERRIDE" ]; then
    OS_ID="$OS_OVERRIDE"
else
    # Auto-detect
    if [ -f /etc/os-release ]; then
        # Load OS info
        . /etc/os-release
        OS_ID=$ID
    else
        echo "Error: Could not auto-detect OS from /etc/os-release."
        echo "Please run the script with an argument: $0 [fedora|ubuntu]"
        exit 1
    fi
fi

# 2. Run the correct installation
echo "Detected OS: $OS_ID"
case "$OS_ID" in
"fedora")
    install_fedora
    ;;
"ubuntu" | "debian")
    install_ubuntu
    ;;
*)
    echo "Error: Unsupported OS '$OS_ID'."
    echo "This script only supports 'fedora', 'ubuntu', and 'debian'."
    exit 1
    ;;
esac

echo
echo "All software dependencies installed successfully!"
echo "You can now run the './setup.sh' script to stow your configs."
