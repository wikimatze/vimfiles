" This Hack is from "Practical Vim" all credits go to Drew Neil
xn * :<C-u>call <SID>VSetSearch()<CR>/<C-R>=@/<CR><CR>
xn # :<C-u>call <SID>VSetSearch()<CR>?<C-R>=@/<CR><CR>

fu! s:VSetSearch()
  let temp = @s
  norm! gv"sy
  let @/ = '\V' . substitute(escape(@s, '/\'), '\n', '\\n', 'g')
  let @s = temp
endf

