let g:yankring_max_history = 1000             " save the last 1000 elements
let g:yankring_max_element_length = 0         " no limit for storing entries
let g:yankring_history_dir = '$HOME/.vim'     " put the yankring history file in the vim-directory
let g:yankring_history_file = 'yankring_file' " name of the yankring file
let g:yankring_replace_n_pkey = 0             " the <C-p> is used by the ctrlp-plugin

noremap <leader>y :YRShow<CR>

