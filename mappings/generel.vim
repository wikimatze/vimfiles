
" prevent pressing ESC to go into escape mode
inoremap <ESC> <nop>

" ## press ,v will brings up vimrc for editing
nmap <leader>v :vsplit $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>


" ## better copy/paste
vnoremap <C-X> "+d
vnoremap <C-C> "+y
nnoremap <C-V> "+gPl
vnoremap <C-V> :<C-U>call Paste("v")<CR>
inoremap <C-V> <C-O>:call Paste("i")<CR>

" ## comment in visual mode press ,c (for uncomment ,u)
noremap <silent> ,c :<C-B>sil <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:noh<CR>
noremap <silent> ,u :<C-B>sil <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:noh<CR>

" ## vim-NERDTree tabs (toggle NERDTree by pressing t)
map t <plug>NERDTreeTabsToggle<CR>
