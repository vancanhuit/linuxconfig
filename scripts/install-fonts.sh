#!/bin/sh

if [ ! -d "$HOME/.fonts" ]; then
    mkdir -p $HOME/.fonts
fi
echo '----- Copying fonts ------'
cp ../fonts/*.ttf $HOME/.fonts/
fc-cache -fv
