" ## char replacement (good for creating vocabularly)
nmap <leader>bldots :%s/=/\& \\ldots \&/g<CR> " replace = through & \ldots &
vmap <leader>bldots :%s/=/\& \\ldots \&/g<CR>
nmap <leader>bendbackslashes :%s/$/ \\\\/<CR> " will add \\ to the end of each line
vmap <leader>bendbackslashes :%s/$/ \\\\/<CR>
nmap <leader>_ :%s/_//g<CR> " replace all _ through whitespace
vmap <leader>_ :%s/_//<CR>
nmap <leader>rt :%s/\\t/  /g<CR>
vmap <leader>rt :%s/\\t/  /g<CR>
