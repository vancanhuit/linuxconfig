#!/bin/sh

if [ ! -d "$HOME/.config/alacritty" ]; then
    mkdir -p $HOME/.config/alacritty
fi

cp ../conf/dracula.yml $HOME/.config/alacritty/
cp ../conf/alacritty.yml $HOME/.config/alacritty/
