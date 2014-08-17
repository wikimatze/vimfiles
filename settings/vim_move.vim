" <C-j> or <C-k> will move the selection in visual mode or control mode a line above or beyond
let g:move_key_modifier = 'C'

" Keep the style as it is during moving around code
let g:move_auto_indent = 0

" Enable custom keys => hack for vim-tmux-navigator plugin
let g:move_map_keys = 0
vmap <C-j> <Plug>MoveBlockDown
vmap <C-k> <Plug>MoveBlockUp

