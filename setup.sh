#!/bin/bash
git clone https://github.com/wikimatze/vimfiles.git ~/.vim
ln -sf ~/.vim/.vimrc ~/.vimrc
mkdir -p ~/.fonts
mkdir ~/.vim/thesaurus

echo "Grab german openthesaurus ..."
cd /tmp && wget https://www.openthesaurus.de/export/OpenThesaurus-Textversion.zip -O mthesaur.zip && unzip mthesaur.zip && mv openthesaurus.txt ~/.vim/thesaurus/
echo "... done!"

echo "Start vim and run :PlugInstall"

echo "Next run \`cd ~/.fonts && curl -fLo DroidSansMonoForPowerlinePlusNerdFileTypes.otf https://raw.githubusercontent.com/ryanoasis/nerd-fonts/master/patched-fonts/DroidSansMono/Droid%20Sans%20Mono%20for%20Powerline%20Plus%20Nerd%20File%20Types.otf && sudo chmod 777 DroidSansMonoForPowerlinePlusNerdFileTypes.otf\` to install fonts"


echo "Go to ~/.vim/settings/github_issues.vim and set the optionlet g:github_access_token"

