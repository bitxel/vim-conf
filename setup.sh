#!/bin/bash
if which apt-get >/dev/null; then
    sudo apt-get install -y vim git
# CentOs
elif which yum >/dev/null; then
    sudo yum install -y vim git
# OSX
elif which brew >/dev/null;then
    brew install vim git
fi
[ -d ~/.vim ] && mv -f ~/.vim ~/.vim_old
[ -f ~/.vimrc ] && mv -f ~/.vimrc ~/.vimrc_old
cd ~/ && git clone -b server --depth=1 https://github.com/bitxel/vim-conf.git ~/.vim
ln -sf ~/.vim/.vimrc ~/.vimrc
echo "Done"
