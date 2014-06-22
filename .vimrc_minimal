if has('vim_starting')
  set nocompatible               " Be iMproved
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

let g:neosnippet#expand_word_boundary = 1

call neobundle#rc(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim', { 'name' : 'neobundle' }

" NeoBundle 'AndrewRadev/switch.vim'        , { 'rev': '1bce', 'name': 'switch' }
" NeoBundle 'Eckankar/vim-latex-folding'    , { 'rev': 'c207', 'name': 'latex-folding' }
" NeoBundle 'Raimondi/delimitMate'          , { 'rev': '3848', 'name': 'delimitmate' }
NeoBundle 'Shougo/neosnippet.vim'         , { 'rev': '5785', 'name': 'neosnippet' }
NeoBundle 'Shougo/unite.vim'              , { 'rev': '5b4e', 'name': 'unite' }

if has('lua')
  NeoBundle 'Shougo/neocomplete.vim'      , { 'rev': '56fe', 'name': 'neocomplete' }
endif

NeoBundle 'itchyny/landscape.vim'         , { 'rev': '18b9', 'name' : 'color-landscape' }

NeoBundle 'Shougo/vimproc.vim', { 'rev': '309b',
  \ 'build' : {
  \     'mac' : 'make -f make_mac.mak',
  \     'unix' : 'make -f make_unix.mak',
  \    },
  \ }


syntax on          " enable syntax highlighting
filetype on        " enable file type detection
filetype indent on " enable file type-specific indenting
filetype plugin on " enable file type-specific plugins

