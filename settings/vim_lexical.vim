command -nargs=0 BookEnglisch call lexical#init({
                    \ 'spell': 1,
                    \ 'spelllang':  ['en', 'medical'],
                    \ 'dictionary': ['~/.vim/dictionary/medical_terms.txt',
                    \                '/usr/share/dict/words'],
                    \ })

" Does not work so far 'spellfile': ['~/.vim/spell/de.utf-8.add'],
command -nargs=0 BookGerman call lexical#init({
                    \ 'spell': 1,
                    \ 'spelllang':  ['de_20'],
                    \ 'dictionary': ['~/.vim/spell/gerspchk.dict'],
                    \ })
