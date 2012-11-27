if has("autocmd") && exists("+omnifunc")
au Filetype *
    \	if &omnifunc == "" |
    \		setl omnifunc=syntaxcomplete#Complete |
    \	endif
endif

