let g:lightline = {
    \ 'colorscheme': 'wombat',
    \ 'active': {
    \   'left': [ [ 'mode', 'paste' ],
    \             [ 'fugitive', 'readonly', 'filename', 'modified' ] ]
    \ },
    \ 'component_function': {
    \   'fugitive': 'MyFugitive',
    \   'readonly': 'MyReadonly',
    \   'modified': 'MyModified'
    \ },
    \ 'separator': { 'left': '', 'right': '⇐' },
    \ 'subseparator': { 'left': '⇒', 'right': '⇐' },
    \ }

function! MyModified()
  if &filetype == "help"
    return ""
  elseif &modified
    return "✗"
  elseif &modifiable
    return ""
  else
    return ""
  endif
endfunction

function! MyReadonly()
  if &filetype == "help"
    return ""
  elseif &readonly
    return "⭤"
  else
    return ""
  endif
endfunction

function! MyFugitive()
  if exists("*fugitive#head")
    let _ = fugitive#head()
    return strlen(_) ? 'ト '._ : ''
  endif
  return ''
endfunction
