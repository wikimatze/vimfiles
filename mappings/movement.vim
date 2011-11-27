" ## whitespace jumping: f jumps to the next whitespace and F to the previous
nnoremap f f<space>
vnoremap f f<space>
nnoremap F F<space>
vnoremap F F<space>

"# nav with hjkl in wrapped-lined files
onoremap <silent> <expr> j ScreenMovement("j")
onoremap <silent> <expr> k ScreenMovement("k")
onoremap <silent> <expr> 0 ScreenMovement("0")
onoremap <silent> <expr> ^ ScreenMovement("^")
onoremap <silent> <expr> $ ScreenMovement("$")
nnoremap <silent> <expr> j ScreenMovement("j")
nnoremap <silent> <expr> k ScreenMovement("k")
nnoremap <silent> <expr> 0 ScreenMovement("0")
nnoremap <silent> <expr> ^ ScreenMovement("^")
nnoremap <silent> <expr> $ ScreenMovement("$")

" ## movement between split windows in Vim
map <C-H> <C-w>h
map <C-K> <C-w>k
map <C-L> <C-w>l

