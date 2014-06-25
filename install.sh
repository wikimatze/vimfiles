#!/bin/bash

git clone https://github.com/matthias-guenther/vimfiles.git ~/.vim
ln -sf ~/.vim/.vimrc ~/.vimrc

echo "$ cd ~/.vim/plugged/vimproc.vim && make"
echo "Start vim and run :PlugInstall"

