" ## press jj to emulate the ESC button
ino jj <ESC>
cno jj <c-c>

" ## press ,v will brings up vimrc for editing
nmap <leader>v :sp $MYVIMRC<CR>

" ## better copy/paste
vnoremap <C-X> "+d
vnoremap <C-C> "+y
nnoremap <C-V> "+gPl
vnoremap <C-V> :<C-U>call Paste("v")<CR>
inoremap <C-V> <C-O>:call Paste("i")<CR>
