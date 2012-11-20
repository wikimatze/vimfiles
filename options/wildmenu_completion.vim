if has("wildmenu")
  set wildmenu                                  " enable a navigable list of suggestions
  set wildmode=full                             " zsh full-match, starts over with first match after last match reached
  set wildignore+=.git,.hg,.svn                 " version control
  set wildignore+=*.bmp,*.gif,*.ico,*.jpg,*.png " images
  set wildignore+=*.aux,*.out,*.toc             " LaTeX intermediate files
  set wildignore+=.DS_Store                     " fucking Mac-Stuff
  set wildignore+=*~,*.swp,*.tmp                " tmp and backup files
endif

