" Preamble -----------------------------------------------------------------------{{{

set nocompatible   " be iMproved
filetype off       " required! for vundle
filetype plugin on " Enable file type-specific plugins

set runtimepath+=~/.vim/bundle/vundle/ " add vundle to runtime path
call vundle#rc()

let g:vundle_default_git_proto = 'git' " use git protocol instead of https when building absolute repo URIs

" bundles
Bundle 'Raimondi/delimitMate'
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
Bundle 'tpope/vim-fugitive'
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

" These settings need to come after vundle
syntax on          " Enable syntax highlighting
filetype on        " Enable file type detection
filetype indent on " Enable file type-specific indenting
" --------------------------------------------------------------------------------}}}
" Omnicompletion-----------------------------------------------------------------{{{

" set omnicomplete only if a specific plugin does not exist for this filetype
if has("autocmd") && exists("+omnifunc")
autocmd Filetype *
    \	if &omnifunc == "" |
    \		setlocal omnifunc=syntaxcomplete#Complete |
    \	endif
endif
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
set spellsuggest=best,7                    " only display the 10 best suggestions
set viminfo='1000000,f1                     " save marks for 1 million files ('1000000), save global marks
set ignorecase                              " case insensitive search
set smartcase                               " canceling out ignore case setting that we include an uppercase (\C) letter in the search
set infercase                               " autocompletion in Insert Mode is not case insensitive
set incsearch                               " incremental searching -> highlight matches when writing starts
set hlsearch                                " highlight all finding for a search
set shortmess+=I                            " don't show startup message when opening Vim without a file
set noautochdir                             " don't change the current working directory when opening a new file

let &scrolloff=999-&scrolloff " current view is always centered

" Resize splits when the window is resized
autocmd VimResized * :wincmd =
autocmd BufNew * if winnr('$') == 1 | tabmove99 | endif " move tabs to the end for new, single buffers (exclude splits)

set fillchars="" " get rid of silly characters in separators in the CMD

" Make the 'cw' and like commands put a $ at the end instead of just deleting
" the text and replacing it
set cpoptions+=$

" Trailing whitespace {{{

" only shown when not in insert mode
augroup trailing
    au!
    au InsertEnter * :set listchars-=trail:⌴
    au InsertLeave * :set listchars+=trail:⌴
augroup END

" }}}
" Wildmenu completion {{{

if has("wildmenu")
    set wildmenu " enable a navigable list of suggestions
    set wildmode=full " zsh full-match, starts over with first match after last match reached
    set wildignore+=.git,.hg,.svn                 " version control
    set wildignore+=*.bmp,*.gif,*.ico,*.jpg,*.png " images
    set wildignore+=*.aux,*.out,*.toc             " LaTeX intermediate files
    set wildignore+=.DS_Store                     " fucking Mac-Stuff
    set wildignore+=*~,*.swp,*.tmp                " tmp and backup files
endif

" }}}
" Insert mode completion {{{

set completeopt=longest,menuone,preview

" }}}
" backups {{{

set backupext=~                 " backup file extension
set backupdir=$HOME/.vim/backup " backups are written to $HOME/.backup
set backupcopy=yes              " keep attributes of the original file
set backup                      " save files after close
set writebackup                 " make a backup of the original file when writing
set noswapfile                  " don't save swap files
set updatetime=2000             " Write swap files after 2 seconds of inactivity.

" }}}
" Tabs, wraps, spacing {{{

set tabstop=2      " how many columns a tab counts
set shiftwidth=2   " how many columns text is indented with the indent operations (<< and >>)
set softtabstop=2  " how many columns
set expandtab      " hitting tab in insert mode will produce number in spaces instead of tabs
set wrap           " when lines are longer the the width of the window they will wrapped
set textwidth=100  " maximum of text that is being inserted

" }}}
" Leader {{{

let mapleader = "," " change the leader to be a comma vs. backslash if not given

" }}}
" Color scheme {{{

set background=dark
colorscheme badwolf

" }}}
" List char {{{

set list " enable list mode - symbols for tabs, trails, ...
" extends shows when a file name goes out the view (you have to scroll like in NERDTree)
" trails - whitespaces
set listchars=tab:▸\ ,eol:¬,extends:❯,precedes:❮,trail:·

" }}}
" --------------------------------------------------------------------------------}}}
" Functions {{{

runtime functions/search_for_current_selection.vim
runtime functions/trailing_whitespaces_removal.vim
runtime functions/insert_spacedate.vim " <F5> will insert current date (yyyy-mm-dd) at EOL with space

" }}}
" Mappings {{{

runtime mappings/buffer_movement.vim             " Buffer movement (common [b, ]b, [B, ]B)
runtime mappings/c_up_c_down_to_move_text.vim    " <C-Up> and <C-Down> to move selected lines up and down
runtime mappings/commenting_and_uncommenting.vim " in visual mode press ,c (comment) and  ,u (uncomment)
runtime mappings/esc_with_jk.vim                 " emulare ESC with jk
runtime mappings/fullscreentoggle.vim            " <F12> Fullscreen-Toggle
runtime mappings/markdown_to_html.vim            " Converting markdown to HTML (<leader>md)
runtime mappings/moving_wrapped_lines.vim        " Use hjkl in wrapped-lined files
runtime mappings/quickediting.vim                " ,ba; ,bm; ,br; ,ev to edit files of vim repos
runtime mappings/whitespace_jumping.vim          " Whitespace jumping with f|F<space>
runtime mappings/tab_shifting.vim                " <Tab>|<S-Tab> in visual to tab indent right|left

" Press \cd to change the pwd to the current file you are in
nnoremap \cd :lcd %:h<CR>

" Spellchecker: press ,s to toogle between spellchecker
nnoremap <silent> <leader>s :set spell!<CR>

" Folding Toggling with <space>
nnoremap <space> za

" Fixing the & command to save the flags of last substitution
noremap & :&&<CR>
xnoremap & :&&<CR>


" Char replacement (good for creating vocabularly)
noremap <leader>bldots :%s/=/\& \\ldots \&/g<CR> " replace = through & \ldots &
noremap <leader>bendbackslashes :%s/$/ \\\\/<CR> " will add \\ to the end of each line
noremap <leader>_ :%s/_//g<CR>                   " delete all _
noremap <leader>rt :%s/\\t/  /g<CR>

runtime mappings/commandline.vim
runtime mappings/copy_paste_from_clipboard.vim
runtime mappings/keep_cursor_joining_lines.vim

" }}}
" Runtime settings {{{

" Plugin settings and mappings
runtime! settings/*.vim

runtime macros/matchit.vim " enable better matching for % command

" }}}

