if has ('gui_running')
  " remove all the UI crap
  set guioptions-=T " remove tool bar
  set guioptions-=b " remove horizontal scroll bar
  set guioptions-=l " remove left-hand scrollbar
  set guioptions-=L " remove left-hand if there is a vertical present
  set guioptions-=r " remove right-hand scrollbar
  set guioptions-=R " remove right-hand if there is a vertical present

  " Spellchecker
  highlight Spellbad term=underline gui=undercurl guisp=Orange

  " Different cursors for different modes
  set guicursor=n-c:block-Cursor-blinkon0
  set guicursor+=v:block-vCursor-blinkon0
  set guicursor+=i-ci:ver20-iCursor

  " Mac {{{
  if has('mac')
    set gfn=Menlo:h15
    " set guifont=Menlo\ Regular:h12

    " Fullscreen means FULL screen
    set fuoptions=maxhorz,maxvert

    " Cycle between different open MacVim windows
    noremap <D-lt> :maca _cycleWindows:<CR>

    " Nabble marks with TextMate style
    let macvim_hig_shift_movement = 1
  " }}}
  " Unix {{{
  elseif has('unix')
    set guifont=Inconsolata\ 11
  endif
  " }}}
else
  " Console Vim ...
endif

