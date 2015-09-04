#!/bin/bash
mv -f ~/.vim ~/.vim_old
mv -f ~/.vimrc ~/.vimrc_old
cd ~/ && git clone -b server https://github.com/bitxel/vim-conf.git ~/.vim
ln -sf ~/.vim/.vimrc ~/.vimrc
echo "Done"
