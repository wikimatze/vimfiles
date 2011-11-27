" ## char replacement (good for creating vocabularly)
nmap <leader>bldots :%s/=/\& \\ldots \&/g<CR> " replace = through & \ldots &
nmap <leader>bendbackslashes :%s/$/ \\\\/<CR> " will add \\ to the end of each line
nmap <leader>_ :%s/_//g<CR> " delete all _
nmap <leader>rt :%s/\\t/  /g<CR>
