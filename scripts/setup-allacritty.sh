#!/bin/sh

if [ ! -d "$HOME/.config/alacritty" ]; then
    mkdir -p $HOME/.config/alacritty
fi

cp ../dotfiles/alacritty.yml $HOME/.config/alacritty
