execute pathogen#infect('plugins/{}')
set number

syntax on          " enable syntax highlighting
filetype on        " enable file type detection
filetype indent on " enable file type-specific indenting
set nocompatible   " be iMproved
filetype plugin on " enable file type-specific plugins

" defining custom omnicompletion functions
ru options/omnicompletion.vim

" General settings {{{

set nonumber                                " display no line numbers
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
set synmaxcol=0                             " better scrolling for long lines
set spelllang=en_us                         " default language for spell checker
set spellfile=$HOME/.vim/spell/en.utf-8.add " spell file for additional correct English words
set spellsuggest=best,5                     " only display the 5 best suggestions
set viminfo='1000000,f1                     " save marks for 1 million files ('1000000), save global marks
set infercase                               " autocompletion in Insert Mode is case sensitive
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
set incsearch " highlight search after you type it
" so /foo matches FOO and fOo, but /FOO only matches the former)
set ignorecase                              " case insensitive search
set smartcase                               " canceling out ignore for uppercase letter in search
set nohlsearch
set cryptmethod=blowfish                    " better default encryption algorithm
set grepprg='ack'                           " default tool when using grep

let mapleader = "," " change the leader to be a comma vs. backslash if not given

let &scrolloff=999-&scrolloff " current view is always centered

colorscheme detailed
set tags=tags,./tags,gems.tags,./gems.tags

ru! options/*.vim

" --------------------------------------------------------------------------------}}}
" Functions {{{

ru functions/trailing_whitespaces_removal.vim
ru functions/insert_spacedate.vim " <F5> will insert current date (yyyy-mm-dd) at EOL with space

" }}}
" Plugin settings {{{

ru! settings/*.vim
ru macros/matchit.vim " enable better matching for % command

" }}}
" Mappings {{{

ru mappings/commandline.vim                 " using bash commands in the vim commandline
ru mappings/commenting_and_uncommenting.vim " ,c (comment) and  ,u (uncomment) in visual mode
ru mappings/copy_paste_from_clipboard.vim
ru mappings/unite.vim
ru mappings/esc_with_jk.vim                 " emulare ESC with jk
ru mappings/keep_cursor_joining_lines.vim   " pimped default behavior of J
ru mappings/markdown_to_html.vim            " Converting markdown to HTML (<leader>md)
ru mappings/moving_wrapped_lines.vim        " Use hjkl in wrapped-lined files
ru mappings/nerdtree.vim                    " F2 will call NERDTreeToogle
ru mappings/pry.vim                         " ,pi to insert/delete 'require pry; binding pry'
ru mappings/quickediting.vim                " ,ba; ,bm; ,br; ,ev to edit files of vim repos

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


" }}}


" Marking YAML front matter information in markdown files as comments
autocmd BufNewFile,BufRead */_posts/*.md syntax match Comment /\%^---\_.\{-}---$/
