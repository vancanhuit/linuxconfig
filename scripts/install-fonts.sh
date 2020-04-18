#!/bin/sh

if [ ! -d "$HOME/.local/share/fonts" ]; then
    mkdir -p $HOME/.local/share/fonts
fi
echo '----- Copying fonts ------'
cp ../fonts/*.ttf $HOME/.local/share/fonts/
fc-cache -fv
