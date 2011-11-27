" ## copy and paste in Vim (http://ubuntuforums.org/showthread.php?t=74905&page=2)
function! Paste(mode)
  if a:mode == "v"
    normal gv
    normal "+P
    normal l
  elseif a:mode == "i"
    set virtualedit=all
    normal `^"+gP
    let &virtualedit = ""
  endif
endfunction
