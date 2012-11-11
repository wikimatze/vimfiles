setlocal ts=2 sts=2 sw=2 expandtab textwidth=500 foldmethod=syntax

map <F11> :!ruby "%:p"<CR>

let b:comment_leader = '# '
let g:rubycomplete_buffer_loading = 1    " load/evaluate ruby for completion
let g:rubycomplete_classes_in_global = 1 " parse the entire buffer for autocompletion
