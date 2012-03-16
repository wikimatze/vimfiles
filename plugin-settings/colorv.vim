" when opening a css/sass file call preview to see the colors
augroup preview_file
  au! BufWinEnter *.css,*.sass call colorv#preview()
  au! bufwritepost *.css,*.sass call colorv#preview()
augroup END

