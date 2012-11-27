if has('mac')
  no  <F12> :set invfullscreen<CR>
  ino  <F12> :set invfullscreen<CR>
elseif has('unix')
  no  <F12> :Fullscreen<CR>
  ino <F12> <ESC>:Fullscreen<CR>
endif

