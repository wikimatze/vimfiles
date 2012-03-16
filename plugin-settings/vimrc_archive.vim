" # better status line
set statusline=%t " name of the current file
set statusline+=\ -\ " separator
set statusline+=Line:" label
set statusline+=\ %4l " current line is always 4 pixels long
set statusline+=/ " separator
set statusline+=%L " total lines of the file
set statusline+=\ -\ " separator
set statusline+=FileType: " label
set statusline+=%y " Filetype of the file
set statusline+=\ CWD: " label
set statusline+=\ %r%{CurDir()} " pwd of vim

