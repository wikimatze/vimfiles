" tabular: press ,b= to order indenting = separated terms with different spaces
" example:
"   ab = cd
"   abc = def
" mark the lines in visual mode, then press ,b=
" result:
"  ab  = cd
"  abc = def
" works for all specified chars below
nnoremap <leader>b= :Tabularize /=<CR>
vnoremap <leader>b= :Tabularize /=<CR>
nnoremap <leader>b: :Tabularize /:<CR>
vnoremap <leader>b: :Tabularize /:<CR>
nnoremap <leader>b" :Tabularize /"<CR>
vnoremap <leader>b" :Tabularize /"<CR>

