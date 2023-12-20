#!/bin/bash

INSTALL_NEOVIM=false

while [[ "$#" -gt 0 ]]; do
    case $1 in
        --install-neovim)
            INSTALL_NEOVIM=true
            shift
            ;;
        *)
            echo "Unknown parameter: $1"
            exit 1
            ;;
    esac
    shift
done

if $INSTALL_NEOVIM; then
    echo "Installing Neovim..."
    ./install/install_neovim.sh
else
    echo "Skipping Neovim installation."
fi

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "Linking Dotfiles!"
# ln -sf "$DIR/.bashrc" ~/
ln -sf ~/dotfiles/nvim ~/.config/nvim
ln -sf ~/dotfiles/configs/.tmux.conf ~/.tmux.conf
ln -sf ~/dotfiles/configs/.bashrc ~/.bashrc

echo "Dotfiles linked!"
