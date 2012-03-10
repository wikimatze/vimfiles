" LaTeX SUITE HACKS
set grepprg=grep\ -nH\ $* " grep works with LaTeX-Suite
" ## auto load dvi after each save in Vim (it runs the latex suite)
augroup latexgroup
  au!
  au BufWritePost *.tex silent call Tex_CompileLatex()
  au BufWritePost *.tex silent !pkill -USR1 xdvi.bin
augroup END

" settings for determining tex file type
let g:tex_flavor = "latex"
" default output of compiling (pressing ,lj) is dvi
let g:Tex_DefaultTargetFormat="dvi"
if has("mac")
  " http://stackoverflow.com/questions/6306814/enable-inversearch-for-dvi-documents-in-macvim
  let g:vimPath = "/Applications/MacVim.app/Contents/MacOS/Vim"
  let g:Tex_ViewRule_dvi = 'xdvi -editor "' . g:vimPath . ' --servername xdvi --remote +\%l \%f" $* &'
  let g:Tex_ViewRuleComplete_dvi = 'xdvi -editor "' . g:vimPath . ' --servername xdiv --remote +\%l \%f" $* &'
  map ,lj :execute '!cd ' . expand(Tex_GetMainFileName(':p:h')) . ' && xdvi -editor "' . g:vimPath . ' --servername 'v:servername' --remote-wait +\%l \%f" -sourceposition ' . line(".") . substitute(expand('%:p'),expand(Tex_GetMainFileName(':p:h')).'\/','','') . " " . expand(Tex_GetMainFileName(':p:r')) . ".dvi &" <CR><CR>
elseif has("unix")
  " inverse | forward search (http://forum.ubuntuusers.de/topic/vim-vim-latexsuite-vim-gtk)
  " her are the forward search
    let g:Tex_ViewRule_dvi = 'xdvi -editor "vim --servername xdvi --remote +\%l \%f" $* &'
    let g:Tex_ViewRuleComplete_dvi = 'xdvi -editor "vim --servername xdiv --remote +\%l \%f" $* &'
    map ,lj :execute '!cd ' . expand(Tex_GetMainFileName(':p:h')) . ' && xdvi -editor "vim --servername 'v:servername' --remote-wait +\%l \%f" -sourceposition ' . line(".") . substitute(expand('%:p'),expand(Tex_GetMainFileName(':p:h')).'\/','','') . " " . expand(Tex_GetMainFileName(':p:r')) . ".dvi &" <CR><CR>
    let Tlist_Ctags_Cmd='/usr/local/bin/ctags'
    set tags=tags
endif

