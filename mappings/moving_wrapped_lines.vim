ono <silent> <expr> j ScreenMovement("j")
ono <silent> <expr> k ScreenMovement("k")
ono <silent> <expr> 0 ScreenMovement("0")
ono <silent> <expr> ^ ScreenMovement("^")
ono <silent> <expr> $ ScreenMovement("$")
nn <silent> <expr> j ScreenMovement("j")
nn <silent> <expr> k ScreenMovement("k")
nn <silent> <expr> 0 ScreenMovement("0")
nn <silent> <expr> ^ ScreenMovement("^")
nn <silent> <expr> $ ScreenMovement("$")

" needed by for files with wrapped-lines
fu! ScreenMovement(movement)
  if &wrap
    return "g" . a:movement
  else
    return a:movement
  endif
endf

