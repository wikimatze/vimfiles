" Preamble -----------------------------------------------------------------------{{{

set nocompatible   " be iMproved
filetype off       " required! for vundle
filetype plugin on " enable file type-specific plugins

set runtimepath+=~/.vim/bundle/vundle/ " add vundle to ru path
call vundle#rc()

let g:vundle_default_git_proto = 'git' " use git protocol instead of https when building absolute repo URIs

" bundles {{{

Bundle 'Raimondi/delimitMate'
Bundle 'jnwhiteh/vim-golang'
Bundle 'lukerandall/haskellmode-vim'
Bundle 'jamessan/vim-gnupg'
Bundle 'benmills/vimux'
Bundle 'ecomba/vim-ruby-refactoring'
Bundle 'gmarik/vundle'
Bundle 'godlygeek/tabular'
Bundle 'jpalardy/vim-slime'
Bundle 'kien/ctrlp.vim'
Bundle 'matthias-guenther/hammer.vim'
Bundle 'matthias-guenther/tocdown'
Bundle 'mileszs/ack.vim'
Bundle 'msanders/snipmate.vim'
Bundle 'nelstrom/vim-markdown-folding'
Bundle 'othree/html5-syntax.vim'
Bundle 'rodjek/vim-puppet'
Bundle 'scrooloose/syntastic'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-liquid'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-speeddating'
Bundle 'tpope/vim-surround'
Bundle 'vim-ruby/vim-ruby'
Bundle 'vim-scripts/IndexedSearch'
Bundle 'vim-scripts/JSON.vim'
Bundle 'vim-scripts/YankRing.vim'
Bundle 'vim-scripts/dbext.vim'
Bundle 'vim-scripts/vis'
Bundle 'xolox/vim-notes'
Bundle 'xolox/vim-shell'
Bundle 'zaiste/tmux.vim'

" }}}
" these settings need to come after vundle
syntax on          " enable syntax highlighting
filetype on        " enable file type detection
filetype indent on " enable file type-specific indenting

" defining custom omnicompletion functions
ru options/omnicompletion.vim
" --------------------------------------------------------------------------------}}}
" General settings ---------------------------------------------------------------{{{

set encoding=utf-8                          " terminal encoding
set fileencodings=utf-8,default,latin1      " the order of file encodings to try.
set number                                  " display line numbers
set modeline                                " check first lines of files for style information
set noerrorbells                            " turn of nasty error sounds
set autoindent                              " Copy indent from current line when starting a new line
set autoread                                " automatically read a file that has changed on disk
set showbreak=↪                             " show the symbol for wrapped lines
set history=5000                            " number of lines for command line history
set shell=/usr/bin/zsh                      " using zsh for running Ex commands
set showmode                                " show the current modal mode
set showcmd                                 " show (partial) command in the last line of the screen
set nowarn                                  " do not warn, when shell command update the file you edit in Vim
set backspace=indent,eol,start              " allow backspacing over everything in insert mode
set ch=1                                    " height of the command line at the bottom
set ruler                                   " show the line and column number of the cursor position
set numberwidth=2                           " using only 2 column for number line presentation
set lazyredraw                              " don't update the display while executing macros, registers, etc.
set ttyfast                                 " fast terminal connection, more characters will be sent to the screen
set splitbelow                              " splitting a window will put the new window below the current one
set splitright                              " splitting a window will put the new window right the current one
set synmaxcol=200                           " better scrolling for long lines
set spelllang=en_us                         " default language for spell checker
set spellfile=$HOME/.vim/spell/en.utf-8.add " spell file for additional correct English words
set spellsuggest=best,7                     " only display the 10 best suggestions
set viminfo='1000000,f1                     " save marks for 1 million files ('1000000), save global marks
set ignorecase                              " case insensitive search
set smartcase                               " canceling out ignore case setting that we include an uppercase (\C) letter in the search
set infercase                               " autocompletion in Insert Mode is not case insensitive
set incsearch                               " incremental searching -> highlight matches when writing starts
set hlsearch                                " highlight all finding for a search
set shortmess+=I                            " don't show startup message when opening Vim without a file
set noautochdir                             " don't change the current working directory when opening a new file
set cpoptions+=$                            " `cw` put a $ at the end instead of pure deletion
set completeopt=longest,menuone,preview     " modes for auto completion in insert mode
set tabstop=2                               " how many columns a tab counts
set shiftwidth=2                            " how many columns text is indented with the indent operations (<< and >>)
set softtabstop=2                           " how many columns
set expandtab                               " hitting tab in insert mode will produce number in spaces instead of tabs
set wrap                                    " when lines are longer the width of the window they will wrapped
set textwidth=100                           " maximum of text that is being inserted

set fillchars=""                            " get rid of silly characters in separators in the CMD
let mapleader = "," " change the leader to be a comma vs. backslash if not given

let &scrolloff=999-&scrolloff " current view is always centered

set background=dark
colorscheme badwolf

" Resize splits when the window is resized
au VimResized * :wincmd =
au BufNew * if winnr('$') == 1 | tabmove99 | endif " move tabs to the end for new, single buffers (exclude splits)

ru! options/*.vim

" --------------------------------------------------------------------------------}}}
" Functions {{{

ru functions/search_for_current_selection.vim
ru functions/trailing_whitespaces_removal.vim
ru functions/insert_spacedate.vim " <F5> will insert current date (yyyy-mm-dd) at EOL with space

" }}}
" Mappings {{{

ru mappings/buffer_movement.vim             " Buffer movement (common [b, ]b, [B, ]B)
ru mappings/c_up_c_down_to_move_text.vim    " <C-Up> and <C-Down> to move selected lines up and down
ru mappings/commenting_and_uncommenting.vim " in visual mode press ,c (comment) and  ,u (uncomment)
ru mappings/esc_with_jk.vim                 " emulare ESC with jk
ru mappings/fullscreentoggle.vim            " <F12> Fullscreen-Toggle
ru mappings/markdown_to_html.vim            " Converting markdown to HTML (<leader>md)
ru mappings/moving_wrapped_lines.vim        " Use hjkl in wrapped-lined files
ru mappings/quickediting.vim                " ,ba; ,bm; ,br; ,ev to edit files of vim repos
ru mappings/whitespace_jumping.vim          " Whitespace jumping with f|F<space>
ru mappings/tab_shifting.vim                " <Tab>|<S-Tab> in visual to tab indent right|left

" Press \cd to change the pwd to the current file you are in
nn \cd :lcd %:h<CR>

" Spellchecker: press ,s to toogle between spellchecker
nn <silent> <leader>s :set spell!<CR>

" Folding Toggling with <space>
nn <space> za

" Fixing the & command to save the flags of last substitution
no & :&&<CR>
xn & :&&<CR>


" Char replacement (good for creating vocabularly)
no <leader>bldots :%s/=/\& \\ldots \&/g<CR> " replace = through & \ldots &
no <leader>bendbackslashes :%s/$/ \\\\/<CR> " will add \\ to the end of each line
no <leader>_ :%s/_//g<CR>                   " delete all _
no <leader>rt :%s/\\t/  /g<CR>

ru mappings/commandline.vim
ru mappings/copy_paste_from_clipboard.vim
ru mappings/keep_cursor_joining_lines.vim

" }}}
" Plugin settings {{{

ru! settings/*.vim
ru macros/matchit.vim " enable better matching for % command

" }}}

