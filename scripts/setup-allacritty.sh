#!/bin/sh

if [ ! -d "$HOME/.config/alacritty" ]; then
    mkdir -p $HOME/.config/alacritty
fi

cp ../conf/alacritty.yml $HOME/.config/alacritty/
