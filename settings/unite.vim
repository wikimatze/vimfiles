let g:unite_source_history_yank_enable=1
let g:unite_source_history_yank_limit=10000
let g:unite_source_history_yank_file=$HOME.'/.vim/yankring.txt'

let g:unite_enable_start_insert = 1              " start in insert mode
let g:unite_update_time = 200                    " shorten the default update date to 200ms
let g:unite_cursor_line_highlight = 'TabLineSel' " mark matches in buffer as bold

call unite#filters#matcher_default#use(['matcher_fuzzy'])

if executable('ack-grep')
  let g:unite_source_grep_command = 'ack-grep'
  let g:unite_source_grep_default_opts = '--no-heading --no-color -a -H'
  let g:unite_source_grep_recursive_opt = ''
endif

" custom mappings for the unite buffer
autocmd FileType unite call s:unite_settings()
function! s:unite_settings()
  imap <buffer> <C-k> <Plug>(unite_select_previous_line)
  imap <buffer> <C-j> <Plug>(unite_select_next_line)
  imap <buffer> <C-c> <Plug>(unite_exit)
  nmap <buffer> <C-c> <Plug>(unite_exit)
endfunction
