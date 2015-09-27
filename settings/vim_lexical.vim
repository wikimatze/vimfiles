command -nargs=0 English call lexical#init({
                    \ 'spell': 1,
                    \ 'spelllang':  ['en'],
                    \ 'dictionary': ['/usr/share/dict/words'],
                    \ 'thesaurus':  ['~/.vim/thesaurus/mthesaur.txt'],
                    \ 'spellfile':  ['~/.vim/spell/en.utf-8.add'],
                    \ })

command -nargs=0 German call lexical#init({
                    \ 'spell': 1,
                    \ 'spelllang':  ['de_20'],
                    \ 'dictionary': ['~/.vim/spell/gerspchk.dict'],
                    \ 'thesaurus':  ['~/.vim/thesaurus/openthesaurus.txt'],
                    \ 'spellfile':  ['~/.vim/spell/de.utf-8.add'],
                    \ })
