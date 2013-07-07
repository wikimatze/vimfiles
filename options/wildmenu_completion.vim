if has("wildmenu")
  set wildmenu                           " enable a navigable list of suggestions
  set wildmode=full                      " zsh full-match, starts over with first match after last match reached
  set wig+=.git,.hg,.svn                 " version control
  set wig+=*.bmp,*.gif,*.ico,*.jpg,*.png " images
  set wig+=*.aux,*.out,*.toc             " LaTeX intermediate files
  set wig+=.DS_Store                     " Mac
  set wig+=*~,*.swp,*.tmp                " tmp and backup files
endif

