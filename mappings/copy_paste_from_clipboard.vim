if has('unix')
  vn <C-c> y:call system("xclip -i -selection clipboard", getreg("\""))<CR>:call system("xclip -i", getreg("\""))<CR>
  no <leader><C-v> :call setreg("\"",system("xclip -o -selection clipboard"))<CR>p
elseif has('mac')
  vn <C-c> y:call system("pbcopy", getreg("\""))<CR>
  no <leader><C-v> :call setreg("\"",system("pbpaste"))<CR>p
endif

