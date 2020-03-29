#!/bin/sh

echo '----- Installing nvm for coc.vim plugin -----'
export NVM_DIR="$HOME/.nvm" && (
  git clone https://github.com/nvm-sh/nvm.git "$NVM_DIR"
  cd "$NVM_DIR"
  git checkout `git describe --abbrev=0 --tags --match "v[0-9]*" $(git rev-list --tags --max-count=1)`
) && \. "$NVM_DIR/nvm.sh"


echo '----- Installing vim-plug -----'
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo '----- Copying init.vim ------'
if [ ! -d "$HOME/.config/nvim" ]; then
    mkdir -p $HOME/.config/nvim
fi
cp ../dotfiles/init.vim ~/.config/nvim/
