#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# ln -sf "$DIR/.bashrc" ~/
ln -s ~/dotfiles/nvim ~/.config/nvim

echo "Dotfiles linked!"
