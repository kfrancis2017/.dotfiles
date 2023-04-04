#!/bin/bash

##This script cleans up after the Linux environment setup
##Remove .vimrc file
if [ -f "$HOME/.vimrc" ]; then
rm "$HOME/.vimrc"
fi

##Remove line from .bashrc file
if grep -q "source ~/.dotfiles/etc/bashrc custom" "$HOME/.bashrc"; then
sed -i '/source ~/.dotfiles/etc/bashrc custom/d' "$HOME/.bashrc"
fi

##Remove .TRASH directory
if [ -d "$HOME/.TRASH" ]; then
rm -rf "$HOME/.TRASH"
fi
