" always display the statusline
set laststatus=2

"Set the status line the way i like it
set statusline=%f                            " name of the current file
set statusline+=\ %y                         " Filetype of the file
set statusline+=\ %m                         " show, if the file was modified
set statusline+=\ %r%{fugitive#statusline()} " show the current git branch
set statusline+=\ Line:%l/%L[%p%%]           " l .. show the current line, L .. total line number, p ..  percentage
set statusline+=\ Col:%v                     " show the current column
set statusline+=\ Buf:#%n                    " show the current buffer

