#!/bin/bash
ln -sf ~/.vim/.vimrc ~/.vimrc
if [[ ! -e ~/.fonts ]]; then
  echo "Creating ~/.fonts folder"
  mkdir ~/.fonts
fi
if [[ ! -e ~/.vim/thesaurus ]]; then
  echo "Creating ~/.vim/thesaurus folder"
  mkdir ~/.vim/thesaurus
fi

echo "Grab german openthesaurus ..."
cd /tmp && wget https://www.openthesaurus.de/export/OpenThesaurus-Textversion.zip -O mthesaur.zip && unzip mthesaur.zip && mv openthesaurus.txt ~/.vim/thesaurus/
echo "... done!"

echo "Install the Powerline-Plus-Nerd-File-Types font"

cd ~/.fonts && curl -fLo DroidSansMonoForPowerlinePlusNerdFileTypes.otf https://raw.githubusercontent.com/ryanoasis/nerd-fonts/0.6.0/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20for%20Powerline%20Nerd%20Font%20Complete.otf && sudo chmod 777 DroidSansMonoForPowerlinePlusNerdFileTypes.otf

