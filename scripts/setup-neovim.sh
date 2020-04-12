#!/bin/sh

echo '----- Installing vim-plug -----'
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo '----- Copying init.vim ------'
if [ ! -d "$HOME/.config/nvim" ]; then
    mkdir -p $HOME/.config/nvim
fi
cp ../dotfiles/init.vim $HOME/.config/nvim/
