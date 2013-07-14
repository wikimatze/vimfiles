" set autocompletion for insert mode with <C-n>
" . ... scan the current buffer
" b ... scan other loaded buffers that are in the buffer list
" w ... scan buffers from other windows
" u ... scan unloaded buffers that are in the buffer list
" U ... scan buffers that are not in the buffer list
" t ... tag completion
" i ... scan current and included files
set complete=.,b,w,u,U,t,i

