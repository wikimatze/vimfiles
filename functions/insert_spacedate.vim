" insert date in the form yyyy-mm-dd at the end of a line
fu! InsertSpaceDate()
  let @x = " "
  let @x = @x . strftime("%Y-%m-%d")
  normal! "xp
endf

" press F5 to insert the current date at the end of the line
no <silent> <F5> $:call InsertSpaceDate()<CR>
