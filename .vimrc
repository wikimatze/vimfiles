" Preamble -----------------------------------------------------------------------{{{

set nocompatible " be iMproved
filetype off     " required! for vundle
filetype plugin on " Enable file type-specific plugins

runtime macros/matchit.vim " enable better matching for % command

set runtimepath+=~/.vim/bundle/vundle/ " add vundle to runtime path
call vundle#rc()

let g:vundle_default_git_proto = 'git' " use git protocol instead of https when building absolute repo URIs

" My bundles
Bundle 'Raimondi/delimitMate'
Bundle 'benmills/vimux'
Bundle 'ecomba/vim-ruby-refactoring'
Bundle 'gmarik/vundle'
Bundle 'godlygeek/tabular'
Bundle 'jpalardy/vim-slime'
Bundle 'kien/ctrlp.vim'
Bundle 'matthias-guenther/hammer.vim'
Bundle 'matthias-guenther/tocdown'
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

" --------------------------------------------------------------------------------}}}
" File type detection ------------------------------------------------------------{{{

syntax on          " Enable syntax highlighting
filetype on        " Enable file type detection
filetype indent on " Enable file type-specific indenting

" -------------------------------------------------------------------------------}}} "
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
set modeline                                " don't look how many lines are the beginning and the end of the file
set autoindent                              " Copy indent from current line when starting a new line
set autoread                                " automatically read a file that has changed on disk
set showmode                                " show the current modal mode
set showcmd                                 " show (partial) command in the last line of the screen
set noerrorbells                            " don't make noise on error messages
set ttyfast                                 " fast terminal connection, more characters will be sent to the screen
set ruler                                   " show the line and column number of the cursor position
set backspace=indent,eol,start              " allow backspacing over everything in insert mode
set nonumber                                " don't display line numbers (takes too much space)
set numberwidth=2                           " using only 2 column for numberline presentation
set ch=1                                    " height of the command line at the bottom
set history=5000                            " keep 5000 lines of command line history
set shell=/usr/bin/zsh                      " using zsh for running Ex commands
set lazyredraw                              " don't update the display while executing macros, registers, etc.
set showbreak=↪                             " show the symbol for wrapped lines
set splitbelow                              " splitting a window will put the new window below the current one
set splitright                              " splitting a window will put the new window right the current one
set fileencodings=utf-8,default,latin1      " the order of file encodings to try.
set nomodeline                              " frequent security hole
set nowarn                                  " do not warn, when shell command update the file you edit in Vim
set shell=/bin/bash                         " always use sh when executing commands with :!
set synmaxcol=200                           " better scrolling for long lines
set spelllang=en_us                         " default language for spell checker
set spellfile=$HOME/.vim/spell/en.utf-8.add " spell file for additional correct English words
set spellsuggest=best,10                    " only display the 10 best suggestions
set suffixesadd=.rb                         " are used when searching for files to open with 'gf'
set title                                   " show title in console title
set viminfo='1000000,f1                     " save marks for 1 million files ('1000000), save global marks
set ignorecase                              " case insensitive search
set smartcase                               " canceling out ignorecase setting that we include an uppercase (\C) letter in the search
set infercase                               " autocomplete in Insert Mode is not case insensitve
set hlsearch                                " highlight all finding for a search
set incsearch                               " do incremental searching, that means search after the string when you begin writing
set shortmess+=I                            " don't show startup message when opening Vim without a file
set noautochdir                             " don't change the current working directory when opening a new file

let &scrolloff=999-&scrolloff " current view is always centered

" when switching between windows, automatically write all buffers
autocmd FocusLost * :silent! wall

" Resize splits when the window is resized
autocmd VimResized * :wincmd =
autocmd BufNew * if winnr('$') == 1 | tabmove99 | endif " move tabs to the end for new, single buffers (exclude splits)

set fillchars="" " get rid of silly characters in separators in the CMD

" Make the 'cw' and like commands put a $ at the end instead of just deleting
" the text and replacing it
set cpoptions+=$


" Cursorline {{{

" Only show cursorline in the current window and in normal mode.
augroup cline
    au!
    au WinLeave * set nocursorline
    au WinEnter * set cursorline
    au InsertEnter * set nocursorline
    au InsertLeave * set cursorline
augroup END

" }}}
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
" Line return {{{

" When editing a file, always jump to the last known cursor position.
augroup line_return
    au!
    au BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \     execute 'normal! g`"zvzz' |
        \ endif
augroup END

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
" Statusline {{{

" always display the statusline
set laststatus=2

"Set the status line the way i like it
set statusline=%f                            " name of the current file
set statusline+=\ %y                         " Filetype of the file
set statusline+=\ %m                         " show, if the file was modified
set statusline+=\ %r%{fugitive#statusline()} " show the current git branch
set statusline+=\ Line:%l/%L[%p%%]           " l .. show the current line, L .. total line number, p ..  percentage
set statusline+=\ Col:%v                     " show the current column
set statusline+=\ Buf:#%n                    " show the current buffer

" }}}
" List char {{{

set list " enable list mode - symbols for tabs, trails, ...
" extends shows when a file name goes out the view (you have to scroll like in NERDTree)
" trails - whitespaces
set listchars=tab:▸\ ,eol:¬,extends:❯,precedes:❮,trail:·

" }}}
" --------------------------------------------------------------------------------}}}
" Convenience mappings -----------------------------------------------------------{{{

" Instead of using help F1 will toogle between fullscreen
if has('mac')
  noremap  <F12> :set invfullscreen<CR>
  inoremap  <F12> :set invfullscreen<CR>
elseif has('unix')
  noremap  <F12> :Fullscreen<CR>
  inoremap <F12> <ESC>:Fullscreen<CR>
endif

" reformat current paragraph
noremap Q gq

" Tab/Shift+Tab indent/unindent the highlighted block
" <Tab> perform > and <Shift-Tab> performs <
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv

" Keep the cursor in place while joining lines
nnoremap J mzJ`z

" emulate ESC with jk
inoremap jk <ESC>
cnoremap jk <C-C>

" Quickediting
nnoremap <silent>,ev :split $MYVIMRC<CR>
nnoremap <leader>ba :split ~/.vim/archive.md<CR>
nnoremap <leader>bm :split ~/.vim/mappings.md<CR>
nnoremap <leader>br :split ~/.vim/README.md<CR>

" comment in visual mode press ,c (for uncomment ,u)
noremap <silent> ,c :<C-B>sil <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:noh<CR>
noremap <silent> ,u :<C-B>sil <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:noh<CR>

" Press \cd to change the pwd to the current file you are in
nnoremap \cd :lcd %:h<CR>

" Use hjkl in wrapped-lined files
onoremap <silent> <expr> j ScreenMovement("j")
onoremap <silent> <expr> k ScreenMovement("k")
onoremap <silent> <expr> 0 ScreenMovement("0")
onoremap <silent> <expr> ^ ScreenMovement("^")
onoremap <silent> <expr> $ ScreenMovement("$")
nnoremap <silent> <expr> j ScreenMovement("j")
nnoremap <silent> <expr> k ScreenMovement("k")
nnoremap <silent> <expr> 0 ScreenMovement("0")
nnoremap <silent> <expr> ^ ScreenMovement("^")
nnoremap <silent> <expr> $ ScreenMovement("$")

" needed by for files with wrapped-lines
function! ScreenMovement(movement)
  if &wrap
    return "g" . a:movement
  else
    return a:movement
  endif
endfunction

" Insert date in the form yyyy-mm-dd at the end of a line
function! InsertSpaceDate()
  let @x = " "
  let @x = @x . strftime("%Y-%m-%d")
  normal! "xp
endfunction

" Press F5 to insert the current date at the end of the line
noremap <silent> <F5> $:call InsertSpaceDate()<CR>

" Spellchecker: press ,s to toogle between spellchecker
nnoremap <silent> <leader>s :set spell!<CR>

" Whitespace jumping
nnoremap <leader>f f<space>
nnoremap <leader>F F<space>

" Folding Toggling with <space>
nnoremap <space> za

" Char replacement (good for creating vocabularly)
noremap <leader>bldots :%s/=/\& \\ldots \&/g<CR> " replace = through & \ldots &
noremap <leader>bendbackslashes :%s/$/ \\\\/<CR> " will add \\ to the end of each line
noremap <leader>_ :%s/_//g<CR>                   " delete all _
noremap <leader>rt :%s/\\t/  /g<CR>

" Buffer changing
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>

" Fixing the & command to save the flags of last substitution
noremap & :&&<CR>
xnoremap & :&&<CR>

" Copy/paste clipboard {{{

if has('unix')
  vnoremap <C-c> y:call system("xclip -i -selection clipboard", getreg("\""))<CR>:call system("xclip -i", getreg("\""))<CR>
  noremap <leader><C-v> :call setreg("\"",system("xclip -o -selection clipboard"))<CR>p
elseif has('mac')
  vnoremap <C-c> y:call system("pbcopy", getreg("\""))<CR>
  noremap <leader><C-v> :call setreg("\"",system("pbpaste"))<CR>p
endif

" }}}

" ---------------------------------------------------------------------------------}}}
" Command line mappings ----------------------------------------------------------{{{
" go to the beginning of the line
cnoremap <C-a> <Home>
" go to the end of the command line
cnoremap <C-e> <End>
" go one word to the left
cnoremap <C-b> <Left>
" go one word to the right
cnoremap <C-f> <Right>
" move back in the command history
cnoremap <C-p> <Up>
" move forward in the command history
cnoremap <C-n> <Down>

" --------------------------------------------------------------------------------}}}
" Timeout setting ----------------------------------------------------------------{{{

" This is the timeout used while waiting for user input on a multi-keyed macro
" or while just sitting and waiting for another key to be pressed measured
" in milliseconds.
"
" i.e. for the ",d" command, there is a "timeoutlen" wait period between the
" "," key and the "d" key. If the "d" key isn't pressed before the
" timeout expires, one of two things happens: The "," command is executed
" if there is one (which there isn't) or the command aborts.
set timeoutlen=500

" --------------------------------------------------------------------------------}}}
" C-Up/C-Down to move selected lines up and down ---------------------------------{{{

" Based on http://vim.wikia.com/wiki/VimTip646
" Define maps for Normal and Visual modes, then re-use
" them for Insert and Select.
"

" Normal mode
nnoremap <silent> <C-Up> :move -2<CR>
nnoremap <silent> <C-Down> :move +<CR>

" Visual mode (only; does not include Select mode)
xnoremap <silent> <C-Up> :move '<-2<CR>gv
xnoremap <silent> <C-Down> :move '>+<CR>gv

" Insert mode
imap <silent> <C-Up> <C-O><C-Up>
imap <silent> <C-Down> <C-O><C-Down>

" Select mode
smap <silent> <C-Up> <C-G><C-Up><C-G>
smap <silent> <C-Down> <C-G><C-Down><C-G>

" --------------------------------------------------------------------------------}}}
" Keyword completion -------------------------------------------------------------{{{

set complete=. " the current buffer set complete+=w " scan the buffer from other windows
set complete+=b " scan other loaded buffers that are in the buffer list
set complete+=t " tag completion
set showfulltag " when completing by tag, show the whole tag, not just the function name

" --------------------------------------------------------------------------------}}}
" Filetype detecion --------------------------------------------------------------{{{

au! BufRead,BufNewFile *.erb set filetype=eruby
au! BufRead,BufNewFile *.haml set filetype=haml
au! BufNewFile,BufRead *.m*down setlocal filetype=markdown
au! BufRead,BufNewFile *.js set filetype=javascript
au! BufRead,BufNewFile *.json set filetype=json
au! BufRead,BufNewFile *.rb set filetype=ruby
au! BufRead,BufNewFile *.sass,*.scss set filetype=scss
au! BufRead,BufNewFile *.tex,*.latex set filetype=tex
au! BufRead,BufNewFile *.textile set filetype=textile
au! BufRead,BufNewFile *.tmux.conf set filetype=tmux
au! BufRead,BufNewFile *.yml set filetype=yaml
au BufWinEnter *.txt if &ft == 'help' | wincmd L | endif

" --------------------------------------------------------------------------------}}}
" Text objects -------------------------------------------------------------------{{{

onoremap ir i[
onoremap ar i[
vnoremap ir i[
vnoremap ir i[

" --------------------------------------------------------------------------------}}}
" Removal of trailing whitespace -------------------------------------------------{{{

function! <SID>StripTrailingWhitespaces()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction

" when file is saved, call the function to remove trailing whitespace
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

" --------------------------------------------------------------------------------}}}

" Functions {{{
" Search for current selection
runtime functions/search_for_current_selection.vim

" }}}
" Mappings {{{
" Converting markdown to HTML (<leader>md)
runtime mappings/markdown_to_html.vim

" }}}
" Runtime settings {{{

" Plugin settings and mappings
runtime settings/ctrlp.vim
runtime settings/dbext.vim
runtime settings/delimate.vim
runtime settings/index_search.vim
runtime settings/netrw.vim
runtime settings/notes.vim
runtime settings/snipmate.vim
runtime settings/syntastic.vim
runtime settings/tabularize.vim
runtime settings/vim_ruby.vim
runtime settings/vim_shell.vim
runtime settings/vim_slime.vim
runtime settings/yankring.vim

" Environments (Mac/Unix/GUI/Console)
runtime settings/environmens.vim

" }}}

