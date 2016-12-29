let g:vimtex_view_method = 'zathura'

" enable special tex folding
let g:vimtex_fold_enabled = 1
" specify which areas should be detected for folding
let g:vimtex_fold_sections = [
      \ "chapter", "section",
      \ "subsection", "subsubsection"
      \ ]
let g:vimtex_fold_comments = 0 " don't fold comments

" indentation
let g:vimtex_indent_enabled = 1

" toc: don't show preample and number
"let g:vimtex_toc_show_preamble = 0
let g:vimtex_toc_show_numbers = 0

" don't fold \begin ... \end environments
let g:vimtex_fold_envs = 0
" use custom section marker
let g:vimtex_fold_levelmarker = '➜'

" ignore certain warning types
let g:vimtex_quickfix_ignored_warnings = ['Underfull', 'Overfull' ]

