au! BufRead,BufNewFile *.erb set filetype=eruby
au! BufRead,BufNewFile *.fish set filetype=go
au! BufRead,BufNewFile *.go set filetype=go
au! BufRead,BufNewFile *.haml set filetype=haml
au! BufRead,BufNewFile *.hs set filetype=haskell
au! BufRead,BufNewFile *.js,*.json  set filetype=javascript
au! BufRead,BufNewFile *.less set filetype=less
au! BufRead,BufNewFile *.m*down,*md,*.html.markdown.erb set filetype=markdown
au! BufRead,BufNewFile *.pp set filetype=puppet
au! BufRead,BufNewFile *.rb,*.autotest set filetype=ruby
au! BufRead,BufNewFile *.sass,*.scss set filetype=scss
au! BufRead,BufNewFile *.slim set filetype=slim
au! BufRead,BufNewFile *.tex,*.latex set filetype=tex
au! BufRead,BufNewFile *.textile set filetype=textile
au! BufRead,BufNewFile *.tmux.conf set filetype=tmux
au! BufRead,BufNewFile *.yml set filetype=yaml
au! BufRead,BufNewFile *conf set filetype=conf

" All plugin doc file should be the 'help' filetype
au! BufRead,BufNewFile plugged/**/*.txt set filetype=help
