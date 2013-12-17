nnoremap <C-p> :<C-u>Unite -no-split file_rec/async file<CR>
nnoremap <space>s :<C-u> Unite -no-split -quick-match buffer<CR>
nnoremap <space>r :<C-u>Unite -no-split register<CR>
nnoremap <space>/ :<C-u>Unite -no-split grep:.<CR>
nnoremap <leader>f :<C-u>Unite -no-split file<CR>
nnoremap <leader>o :<C-u>Unite -no-split -start-insert file_mru<CR>
nnoremap <leader>y :Unite history/yank<CR>
nnoremap <leader>h :<C-u>Unite -no-split help<CR>
nnoremap <leader>c :<C-u>Unite -no-split command<CR>
