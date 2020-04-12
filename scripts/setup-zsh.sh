#!/bin/sh

echo '----- Installing ohmyzsh configuration framework -----'
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

echo '----- Installing powerlevel9k theme -----'
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

echo '----- Installing zsh syntax highlighting plugin -----'
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

echo '----- Installing zsh autosuggestions plugin -----'
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

echo '----- Installing nvm for coc.vim plugin -----'
export NVM_DIR="$HOME/.nvm" && (
  git clone https://github.com/nvm-sh/nvm.git "$NVM_DIR"
    cd "$NVM_DIR"
      git checkout `git describe --abbrev=0 --tags --match "v[0-9]*" $(git rev-list --tags --max-count=1)`
      ) && \. "$NVM_DIR/nvm.sh"

echo '----- Copying .zshrc -----'
cp ../dotfiles/.zshrc $HOME
