" ## press F5 to insert the actual date in the form yyyy-mm-dd
nnoremap <F5> "=strftime("%F")<CR>P
inoremap <F5> <C-R>=strftime("%F")<CR>

" ## spellchecker: press ,s to toogle between spellchecker
nmap <silent> <leader>s :set spell!<CR>
