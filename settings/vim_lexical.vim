let g:lexical#thesaurus = ['~/.vim/thesaurus/mthesaur.txt',]
command -nargs=0 Book call lexical#init()
let g:lexical#dictionary_key = '<leader>k' " Start dictionary lookup
let g:lexical#thesaurus_key = '<leader>t'  " Start thesaurus lookup
