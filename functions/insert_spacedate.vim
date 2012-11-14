" Insert date in the form yyyy-mm-dd at the end of a line
function! InsertSpaceDate()
  let @x = " "
  let @x = @x . strftime("%Y-%m-%d")
  normal! "xp
endfunction

" Press F5 to insert the current date at the end of the line
noremap <silent> <F5> $:call InsertSpaceDate()<CR>
