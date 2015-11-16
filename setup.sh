#!/bin/bash
git clone https://github.com/wikimatze/vimfiles.git ~/.vim
ln -sf ~/.vim/.vimrc ~/.vimrc
mkdir ~/.fonts
mkdir ~/.vim/thesaurus

echo "Grab german openthesaurus ..."
cd /tmp && wget https://www.openthesaurus.de/export/OpenThesaurus-Textversion.zip -O mthesaur.zip && unzip mthesaur.zip && mv openthesaurus.txt ~/.vim/thesaurus/
echo "... done!"

echo "Start vim and run :PlugInstall"

echo "Install the Powerline-Plus-Nerd-File-Types font"

cd ~/.fonts && curl -fLo DroidSansMonoForPowerlinePlusNerdFileTypes.otf https://raw.githubusercontent.com/ryanoasis/nerd-fonts/0.6.0/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20for%20Powerline%20Nerd%20Font%20Complete.otf && sudo chmod 777 DroidSansMonoForPowerlinePlusNerdFileTypes.otf

