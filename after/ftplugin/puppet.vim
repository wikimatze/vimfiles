setlocal ts=2 sts=2 sw=2 expandtab textwidth=500
let b:comment_leader = '# '

" mark line with more than 81 characters
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 100)
