#!/bin/bash
# Debian Ubuntu
if which apt-get >/dev/null; then
	sudo apt-get install -y vim vim-gnome ctags xclip astyle python-setuptools python-dev git
# CentOs
elif which yum >/dev/null; then
	sudo yum install -y gcc vim git ctags xclip astyle python-setuptools python-devel	
fi
# OSX
if which brew >/dev/null;then
    echo "You are using HomeBrew tool"
    brew install vim ctags git astyle
    ##Fix twisted installation Error in Mac caused by Xcode Version limit
    sudo ARCHFLAGS=-Wno-error=unused-command-line-argument-hard-error-in-future easy_install twisted
fi

sudo easy_install -ZU autopep8 twisted
sudo ln -s /usr/bin/ctags /usr/local/bin/ctags
mv -f ~/.vim ~/.vim_old
mv -f ~/.vimrc ~/.vimrc_old
cd ~/ && git clone https://github.com/bitxel/vim-conf.git ~/.vim
ln -sf ~/.vim/.vimrc ~/
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/vundle
vim bundle -c "BundleInstall" -c "q" -c "q"
echo "Done"
