let g:syntastic_enable_signs=1                " setting signs for errors (arrows)
let g:syntastic_auto_loc_list=1               " open/close toc of errors
let g:syntastic_auto_jump=0                   " don't jump to the first error
let g:syntastic_disabled_filetypes = ['html'] " disable for this file type
let tex_no_error=1                            " underscores are not displayed as syntax errors
set statusline+=%#warningmsg#                 " show warning messages
set statusline+=%{SyntasticStatuslineFlag()}  " show message in quick fix
let loaded_tex_syntax_checker = 0             " turn of lacheck of the syntastic plugin
