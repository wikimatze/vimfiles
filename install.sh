#!/bin/bash

git clone https://github.com/matthias-guenther/vimfiles.git ~/.vim
mkdir -p ~/.vim/autoload
curl -fLo ~/.vim/autoload/plug.vim https://raw.github.com/junegunn/vim-plug/master/plug.vim
ln -sf ~/.vim/.vimrc ~/.vimrc

echo "Start vim and run :PlugInstall"
echo "$ cd ~/.vim/plugged/vimproc.vim && make"

