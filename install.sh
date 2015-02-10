#!/bin/bash

git clone https://github.com/matthias-guenther/vimfiles.git ~/.vim
ln -sf ~/.vim/.vimrc ~/.vimrc

echo "To have python and ruby installed, run `sudo apt-get build-dep vim`"
echo "Start vim and run :PlugInstall"

echo "Next run `cd ~/.fonts && curl -fLo DroidSansMonoForPowerlinePlusNerdFileTypes.otf https://raw.githubusercontent.com/ryanoasis/nerd-filetype-glyphs-fonts-patcher/master/patched-fonts/Droid%20Sans%20Mono%20for%20Powerline%20Plus%20Nerd%20File%20Types.otf && sudo chmod 777 DroidSansMonoForPowerlinePlusNerdFileTypes.otf` to install fonts"

