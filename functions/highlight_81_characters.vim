" mark line with more than 81 characters
let g:highlight_81_characters = 0

function Highlight81Characters()
  if g:highlight_81_characters
    let g:highlight_81_characters = 0
    call matchdelete(w:long)
  else
    let g:highlight_81_characters = 1
    let w:long = matchadd('ColorColumn', '\%81v', 100)
    highlight ColorColumn ctermbg=magenta
  endif
endfunction

command -nargs=0 Highlight81Characters call Highlight81Characters()

