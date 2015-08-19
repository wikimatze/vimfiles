#!/bin/bash
git clone https://github.com/wikimatze/vimfiles.git ~/.vim
ln -sf ~/.vim/.vimrc ~/.vimrc
mkdir -p ~/.fonts

echo "Grab mthes10 thesaurus ..."
cd /tmp && wget http://www.gutenberg.org/files/3202/old/2mthes10.zip -O mthesaur.zip && unzip mthesaur.zip && mv mthesaur.txt ~/.vim/thesaurus/
echo "... done!"

echo "To have python and ruby installed, run `sudo apt-get build-dep vim` ..."
sudo apt-get build-dep vim
echo "... done!"

echo "Start vim and run :PlugInstall"

echo "Next run `cd ~/.fonts && curl -fLo DroidSansMonoForPowerlinePlusNerdFileTypes.otf https://raw.githubusercontent.com/ryanoasis/nerd-fonts/master/patched-fonts/DroidSansMono/Droid%20Sans%20Mono%20for%20Powerline%20Plus%20Nerd%20File%20Types.otf && sudo chmod 777 DroidSansMonoForPowerlinePlusNerdFileTypes.otf` to install fonts"

