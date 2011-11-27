" ## tabular: press ,b= to order indenting = separated terms with different spaces
" example:
"   ab = cd
"   abc = def
" mark the lines in visual mode, then press ,b=
" result:
"  ab  = cd
"  abc = def
" works for all specified chars below
let mapleader = ","
nmap <leader>b= :Tabularize /=<CR>
vmap <leader>b= :Tabularize /=<CR>
nmap <leader>b: :Tabularize /:<CR>
vmap <leader>b: :Tabularize /:<CR>
nmap <leader>b/ :Tabularize /\/\/<CR>
vmap <leader>b/ :Tabularize /\/\/<CR>
nmap <leader>b" :Tabularize /"<CR>
vmap <leader>b" :Tabularize /"<CR>
nmap <leader>bt :Tabularize /& \\ldots &<CR>
vmap <leader>bt :Tabularize /& \\ldots &<CR>
