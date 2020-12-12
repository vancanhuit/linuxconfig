#!/bin/sh

echo '----- Copying .tmux.conf ------'
cp ../conf/.tmux.conf $HOME
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
