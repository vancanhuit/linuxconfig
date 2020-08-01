#!/bin/sh

if [ ! -d "$HOME/.local/share/fonts" ]; then
    mkdir -p $HOME/.local/share/fonts
fi
echo '----- Copying fonts ------'
cp -v ../fonts/* $HOME/.local/share/fonts/
fc-cache -fv
