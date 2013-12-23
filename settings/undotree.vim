let g:undotree_SetFocusWhenToggle=1 " when opening UndotreeToggle it should jump to the window

if has("persistent_undo")
  if !isdirectory($HOME . '/.undodir/')
    call mkdir($HOME . '/.undodir/')
  endif
  set undodir=$HOME/.undodir/
  set undofile
endif
