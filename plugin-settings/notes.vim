let g:notes_directory = '~/Dropbox/notes'            " path of main directory
let g:notes_suffix = '.txt'                          " default file ending of note files
autocmd BufEnter ~/Dropbox/notes/* silent! lcd %:p:h " path of the notes directory
