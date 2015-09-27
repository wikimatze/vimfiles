" pry calling -> thanks https://twitter.com/_zph
fu! PryToggle()
    let @a = "binding.pry"
    let wordsFromLine = getline('.')
    if @a ==? wordsFromLine
      normal dd
    else
      normal o
      normal "ap
    endif
endfu

imap <Leader>pi <ESC>:call PryToggle()<CR>
nmap <Leader>pi :call PryToggle()<CR>
