let g:syntastic_enable_signs  = 1            " setting signs for errors (arrows)
let g:syntastic_error_symbol = '✗'           " custom error symbol
let g:syntastic_warning_symbol = '⚠'         " custom warning symbol
let g:syntastic_auto_loc_list = 1            " open/close toc of errors
let g:syntastic_auto_jump     = 0            " don't jump to the first error
let tex_no_error = 1                         " underscores are not displayed as syntax errors
let loaded_tex_syntax_checker = 0            " turn of lacheck of the syntastic plugin
set statusline+=%#warningmsg#                " show warning messages
set statusline+=%{SyntasticStatuslineFlag()} " show message in quick fix

let g:syntastic_sh_checkers = ['checkbashisms']
let g:syntastic_stl_format = '[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]'
let g:syntastic_ruby_checkers = ['rubocop', 'rubylint']

let g:syntastic_mode_map = { 'mode': 'active',
                           \ 'active_filetypes': ['eruby', 'javascript', 'puppet', 'sass'],
                           \ 'passive_filetypes': ['ruby', 'html', 'php', 'sh', 'css'] }
