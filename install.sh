#!/bin/bash

git clone https://github.com/matthias-guenther/vimfiles.git ~/.vim
mkdir ~/.vim/bundle
git clone https://github.com/Shougo/neobundle.vim.git ~/.vim/bundle/neobundle.vim
mv ~/.vim/.vimrc ~/

