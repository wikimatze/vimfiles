let g:notes_directories = ['~/Dropbox/notes'] " path of main directory
let g:notes_shadowdir = '~/.vim/shadow'   " path for templates creating new notes
let g:notes_suffix = '.txt'               " default file ending of note files
let g:notes_smart_quotes = 0              " Don't use special symbols

nnoremap <F7> :Note! collect<CR>
