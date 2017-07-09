" When editing a file, always jump to the last known cursor position.
" reference: http://vim.wikia.com/wiki/Restore_cursor_to_file_position_in_previous_editing_session#Comments
augroup resCur
  autocmd!
  autocmd BufReadPost * call setpos(".", getpos("'\""))
augroup END


