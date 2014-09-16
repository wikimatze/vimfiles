#!/bin/bash

git clone https://github.com/matthias-guenther/vimfiles.git ~/.vim
ln -sf ~/.vim/.vimrc ~/.vimrc

echo "To have python and ruby installed, run `sudo apt-get build-dep vim`"
echo "Start vim and run :PlugInstall"
echo "Next run `cd ~/.vim/plugged/vimproc.vim && make`"

