if has('mac')
  noremap  <F12> :set invfullscreen<CR>
  inoremap  <F12> :set invfullscreen<CR>
elseif has('unix')
  noremap  <F12> :Fullscreen<CR>
  inoremap <F12> <ESC>:Fullscreen<CR>
endif
