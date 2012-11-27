" based on http://vim.wikia.com/wiki/VimTip646
" define maps for Normal and Visual modes, then re-use
" them for Insert and Select.

" normal mode
nn <silent> <C-Up> :move -2<CR>
nn <silent> <C-Down> :move +<CR>

" visual mode
xn <silent> <C-Up> :move '<-2<CR>gv
xn <silent> <C-Down> :move '>+<CR>gv

" insert mode
imap <silent> <C-Up> <C-O><C-Up>
imap <silent> <C-Down> <C-O><C-Down>

" select mode
smap <silent> <C-Up> <C-G><C-Up><C-G>
smap <silent> <C-Down> <C-G><C-Down><C-G>
