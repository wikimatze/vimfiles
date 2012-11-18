if has('unix')
  vnoremap <C-c> y:call system("xclip -i -selection clipboard", getreg("\""))<CR>:call system("xclip -i", getreg("\""))<CR>
  noremap <leader><C-v> :call setreg("\"",system("xclip -o -selection clipboard"))<CR>p
elseif has('mac')
  vnoremap <C-c> y:call system("pbcopy", getreg("\""))<CR>
  noremap <leader><C-v> :call setreg("\"",system("pbpaste"))<CR>p
endif

