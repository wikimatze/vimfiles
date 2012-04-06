" Preamble --- {{{

set nocompatible " be iMproved
filetype off     " required!

set runtimepath+=~/.vim/bundle/vundle/ " add vundle to runtime path
call vundle#rc()

let g:vundle_default_git_proto = 'git' " `git` instead default `https` when building absolute repo URIs

" original repos on github
Bundle 'Raimondi/delimitMate'
Bundle 'ervandew/supertab'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'vim-scripts/mru.vim'
Bundle 'gerardc/vim-padrino'
Bundle 'vim-scripts/JSON.vim'
Bundle 'gerw/vim-latex-suite'
Bundle 'gmarik/vundle'
Bundle 'godlygeek/tabular'
Bundle 'groenewege/vim-less'
Bundle 'hail2u/vim-css3-syntax'
Bundle 'kchmck/vim-coffee-script'
Bundle 'majutsushi/tagbar'
Bundle 'matthias-guenther/tocdown'
Bundle 'mattn/gist-vim'
Bundle 'mileszs/ack.vim'
Bundle 'msanders/snipmate.vim'
Bundle 'othree/html5-syntax.vim'
Bundle 'matthias-guenther/hammer.vim'
Bundle 'scrooloose/syntastic'
Bundle 'sjl/gundo.vim'
Bundle 'skammer/vim-css-color'
Bundle 'tpope/vim-bundler'
Bundle 'tpope/vim-cucumber'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-liquid'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-speeddating'
Bundle 'tpope/vim-surround'
Bundle 'tsaleh/vim-align'
Bundle 'tsaleh/vim-matchit'
Bundle 'vim-scripts/FuzzyFinder'
Bundle 'vim-scripts/IndexedSearch'
Bundle 'vim-scripts/L9'
Bundle 'vim-scripts/grep.vim'
Bundle 'vim-scripts/taglist.vim'
Bundle 'vim-scripts/vis'
Bundle 'wincent/Command-T.git'
Bundle 'xolox/vim-notes'
Bundle 'xolox/vim-open-associated-programs'
Bundle 'xolox/vim-session'
Bundle 'xolox/vim-shell'
Bundle 'Rykka/ColorV'
Bundle 'ecomba/vim-ruby-refactoring'
Bundle 'https://bitbucket.org/sjl/badwolf'
Bundle 'vim-scripts/YankRing.vim'

" }}}
" File type detection --- {{{

syntax on          " Enable syntax highlighting
filetype on        " Enable file type detection
filetype indent on " Enable file type-specific indenting
filetype plugin on " Enable file type-specific plugins

" }}}
" General settings --------------------------------------------------------{{{

set encoding=utf-8                          " the terminal encoding
set modeline                                " don't look how many lines are the beginning and the end of the file
set autoindent                              " Copy indent from current line when starting a new line
set autoread                                " re-read files that changed outside of Vim
set showmode                                " display in the left corner in which modus you are in Vim
set showcmd                                 " show (partial) command in the last line of the screen
set noerrorbells                            " don't make noise on error messages
set ttyfast                                 " fast terminal connection, more characters will be sent to the screen
set ruler                                   " show the line and column number of the cursor position
set backspace=indent,eol,start              " allow backspacing over everything in insert mode
set nonumber                                " don't display line numbers (takes too much space)
set numberwidth=2                           " using only 2 column for numberline presentation
set ch=1                                    " height of the command line at the bottom
set history=5000                            " keep 5000 lines of command line history
set undofile                                " save the names for the undo file
set undoreload=10000                        " save the whole buffer for undo when reloading it
set shell=/bin/bash                         " defines the Shell I want to use for external commands
set lazyredraw                              " don't redraw the screen while executing macros, registers, and other commands
set showbreak=↪                             " show the symbol for wrapped lines
set splitbelow                              " splitting a window will put the new window below the current one
set splitright                              " splitting a window will put the new window right the current one
set fileencodings=utf-8,default,latin1      " the order of file encodings to try.
set guioptions-=T                           " turning of the tool bar
set lines=999 columns=999                   " full screen when starting Gvim (it's a hack)
set ls=1                                    " always show status line
set nomodeline                              " frequent security hole
set nowarn                                  " do not warn, when shell command update the file you edit in Vim
set shell=/bin/bash                         " always use sh when executing commands with :!
set synmaxcol=200                           " better scrolling for long lines
set spelllang=en_us                         " default language for spell checker
set title                                   " show title in console title
set scrolloff=4 " minimal number of screen lines to keep above and below the cursor
set viminfo='1000000,f1 "save marks for 1 million files ('1000000), save global marks
autocmd BufNew * if winnr('$') == 1 | tabmove99 | endif " move tabs to the end for new, single buffers (exclude splits)
set ignorecase " ignore upper- and lowercase letters during a search
set hlsearch   " highlight all finding for a search
set incsearch  " do incremental searching, that means search after the string when you begin writing

" when switching between windows, automatically write all buffers
au FocusLost * :silent! wall

" Resize splits when the window is resized
au VimResized * :wincmd =


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
    set wildmenu " enable command-line completion when pressing :e in a nice window
    set wildmode=longest,list
        " longest: match till the common longest string
        " list: display matches in a list instead of tab separated list of up to four parts
        " the files on wildignore will not be displayed

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
set backupext=~             " backup file extension
set undodir=~/.vim/undo     "
set backupdir=~/.vim/backup " backups are written to ~/.backup/ if possible.
set backupcopy=yes          " keep attributes of the original file

set backup                  " save files after close
set writebackup             " make a backup of the original file when writing
set noswapfile              " don't save swap files
set updatetime=2000         " Write swap files after 2 seconds of inactivity.

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
set statusline=%t " name of the current file
set statusline+=\ -\ " separator
set statusline+=Line:" label
set statusline+=\ %4l " current line is always 4 pixels long
set statusline+=/ " separator
set statusline+=%L " total lines of the file
set statusline+=\ -\ " separator
set statusline+=FileType: " label
set statusline+=%y " Filetype of the file
set statusline+=\ CWD: " label
set statusline+=\ %r%{CurDir()} " pwd of vim

" }}}
" -------------------------------------------------------- }}}
" Convenience mappings -----------------------------------{{{
" Get rid of help key
noremap  <F1> :Fullscreen<CR>
inoremap <F1> <ESC>:Fullscreen<CR>

" kill the window
nnoremap K :q<CR>

" Textmate style formatting
noremap Q gUiw
vnoremap Q gq

" Keep the cursor in place while joining lines
nnoremap J mzJ`z

" turn on/off showing list chars
noremap <leader>l :set list!<CR>

" turn off normal arrow keys for navigation
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>

" CTRL-q will save the file
noremap <C-q> :w<CR>
inoremap <C-q> <Esc>:w<CR>a

" press controll and arrow keys to switch between splits
noremap <C-Down>  <C-W>j
noremap <C-Up>    <C-W>k
noremap <C-Left>  <C-W>h
noremap <C-Right> <C-W>l

" display a list of files in the current directory in insert mode
inoremap <C-F> <C-X><C-F>

" emulate ESC with jk
inoremap jk <ESC>
cnoremap jk <C-C>
inoremap jj <nop>

" prevent pressing ESC to go into escape mode
inoremap <ESC> <nop>

" Sourcing vimrc file with ,sv
nnoremap <leader>sv :source $MYVIMRC<CR>

" Quickediting
nnoremap <leader>v :vsplit $MYVIMRC<CR>
nnoremap <leader>br :vsplit ~/.vim/README.md<CR>
nnoremap <leader>bs :vsplit ~/.vim/README.md<CR>

" comment in visual mode press ,c (for uncomment ,u)
noremap <silent> ,c :<C-B>sil <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:noh<CR>
noremap <silent> ,u :<C-B>sil <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:noh<CR>

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

" Insert date in the form yyyy-mm-dd
nnoremap <F5> "=strftime("%F")<CR>P
inoremap <F5> <C-R>=strftime("%F")<CR>

" Spellchecker: press ,s to toogle between spellchecker
nnoremap <silent> <leader>s :set spell!<CR>

" whitespace jumping
nnoremap <leader>f f<space>
nnoremap <leader>F F<space>

" Folding Toggling with <space>
nnoremap <space> za

" Mark string in visual mode and press / to search for it
vnoremap / y/<C-R>"<CR>

" Char replacement (good for creating vocabularly)
noremap <leader>bldots :%s/=/\& \\ldots \&/g<CR> " replace = through & \ldots &
noremap <leader>bendbackslashes :%s/$/ \\\\/<CR> " will add \\ to the end of each line
noremap <leader>_ :%s/_//g<CR>                   " delete all _
noremap <leader>rt :%s/\\t/  /g<CR>

" Better copy/paste mappings - yeah, I need this old stuff from old editor times :)
vnoremap <C-X> "+d
vnoremap <C-C> "+y
nnoremap <C-V> "+gPl
vnoremap <C-V> :<C-U>call Paste("v")<CR>
inoremap <C-V> <C-O>:call Paste("i")<CR>

" Paste function in Vim (http://ubuntuforums.org/showthread.php?t=74905&page=2)
function! Paste(mode)
  if a:mode == "v"
    normal gv
    normal "+P
    normal l
  elseif a:mode == "i"
    set virtualedit=all
    normal `^"+gP
    let &virtualedit = ""
  endif
endfunction


" -------------------------------------------------------- }}}


" turn on Omni completion
filetype plugin on
set ofu=syntaxcomplete#Complete

" Plugins ----------------------------------------------------------------{{{

" Command-t {{{

let g:CommandTMaxFiles = 20000                      " the max files that will be considered when scanning current directory
let g:CommandTMaxDepth = 20                         " number of levels that will be considered when scanning current directory
let g:CommandTAlwaysShowDotFiles = 1                " also search after matching with dotted files
let g:CommandTScanDotDirectories = 1                " do not search in dot directory
let g:CommandTMatchWindowAtTop = 0                  " the match window will appear at the top of the editor window
let g:CommandTAcceptSelectionMap = '<CR>'           " enter open findings in same window
let g:CommandTAcceptSelectionSplitMap = '<C-s>'     " CTRL-Enter will makes a horizontal split
let g:CommandTAcceptSelectionVSplitMap = '<C-v>'    " CTRL-v will make a vertical split
let g:CommandTAcceptSelectionTabMap = '<C-t>'       " CTRL-t will open the file in a new tab
set wildignore+=*.o,*.obj,.git,.svn,vendor/rails/** " not matching files

" }}}
" Delimate {{{

" don't use the autoclose plugin for vim files
au FileType vim let b:loaded_delimitMate = 0

" }}}
" Fugitive {{{
nnoremap <leader>gd :Gdiff<CR>
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gw :Gwrite<CR>
nnoremap <leader>ga :Gadd<CR>
nnoremap <leader>gb :Gblame<CR>
nnoremap <leader>gco :Gcheckout<CR>
nnoremap <leader>gc :Gcommit<CR>
nnoremap <leader>gm :Gmove<CR>
nnoremap <leader>gr :Gremove<CR>
nnoremap <leader>gp :! git push<CR>

" }}}
" Gist {{{
let g:gist_detect_filetype = 1         " detecting file type for each gist
let g:gist_open_browser_after_post = 1 " open the gist after each post
if has("mac")
  let g:gist_clip_command = 'pbcopy'
elseif has("unix")
  let g:gist_clip_command = 'xclip -selection clipboard'
endif

" }}}
" Hammer {{{

" press ,m and it will render markdown in a browser
noremap <leader>m :Hammer<CR>

" }}}
" Index Search {{{

let g:indexed_search_colors    = 1 " turn of colors for messages
let g:indexed_search_shortmess = 1 " shorter messages
" }}}
" Gundo {{{

let g:gundo_width = 45          " horizontal width
let g:gundo_preview_height = 15 " vertical height
let g:gundo_help = 1            " show the help in gundo window
let g:gundo_close_on_revert = 0 " don't close gundo after a version is selected
let g:gundo_right = 0           " display gundo on the left site

" F3 call GundoToggle
nnoremap <F3> :GundoToggle<CR>
" }}}
" LaTeX-Suite {{{

set grepprg=grep\ -nH\ $* " grep works with LaTeX-Suite
" auto load dvi after each save in Vim (it runs the latex suite)
augroup latexgroup
  au!
  au BufWritePost *.tex silent call Tex_CompileLatex()
  au BufWritePost *.tex silent !pkill -USR1 xdvi.bin
augroup END

" settings for determining tex file type
let g:tex_flavor = "latex"
" default output of compiling (pressing ,lj) is dvi
let g:Tex_DefaultTargetFormat="dvi"
if has("mac")
  " http://stackoverflow.com/questions/6306814/enable-inversearch-for-dvi-documents-in-macvim
  let g:vimPath = "/Applications/MacVim.app/Contents/MacOS/Vim"
  let g:Tex_ViewRule_dvi = 'xdvi -editor "' . g:vimPath . ' --servername xdvi --remote +\%l \%f" $* &'
  let g:Tex_ViewRuleComplete_dvi = 'xdvi -editor "' . g:vimPath . ' --servername xdiv --remote +\%l \%f" $* &'
  map ,lj :execute '!cd ' . expand(Tex_GetMainFileName(':p:h')) . ' && xdvi -editor "' . g:vimPath . ' --servername 'v:servername' --remote-wait +\%l \%f" -sourceposition ' . line(".") . substitute(expand('%:p'),expand(Tex_GetMainFileName(':p:h')).'\/','','') . " " . expand(Tex_GetMainFileName(':p:r')) . ".dvi &" <CR><CR>
elseif has("unix")
  " inverse | forward search (http://forum.ubuntuusers.de/topic/vim-vim-latexsuite-vim-gtk)
  " her are the forward search
    let g:Tex_ViewRule_dvi = 'xdvi -editor "vim --servername xdvi --remote +\%l \%f" $* &'
    let g:Tex_ViewRuleComplete_dvi = 'xdvi -editor "vim --servername xdiv --remote +\%l \%f" $* &'
    map ,lj :execute '!cd ' . expand(Tex_GetMainFileName(':p:h')) . ' && xdvi -editor "vim --servername 'v:servername' --remote-wait +\%l \%f" -sourceposition ' . line(".") . substitute(expand('%:p'),expand(Tex_GetMainFileName(':p:h')).'\/','','') . " " . expand(Tex_GetMainFileName(':p:r')) . ".dvi &" <CR><CR>
    let Tlist_Ctags_Cmd='/usr/local/bin/ctags'
    set tags=tags
endif
" }}}
" Notes {{{

let g:notes_directory = '~/Dropbox/notes'            " path of main directory
let g:notes_suffix = '.txt'                          " default file ending of note files
autocmd BufEnter ~/Dropbox/notes/* silent! lcd %:p:h " path of the notes directory
" }}}
" Session {{{

let g:session_autosave = 'no' " disable automatic saving when quitting a session
let g:session_autoload = 'no' " disable asking to load the previous session
" }}}
" Snipmate {{{
let g:snippets_dir = '~/.vim/snippets' " setting of the snipmate directory

" }}}
" Syntastic {{{
let g:syntastic_enable_signs=1                " setting signs for errors (arrows)
let g:syntastic_auto_loc_list=1               " open/close toc of errors
let g:syntastic_auto_jump=0                   " don't jump to the first error
let g:syntastic_mode_map = { 'mode': 'active', 'active_filetypes': ['haml', 'javascript', 'ruby', 'css', 'sass'], 'passive_filetypes': ['php', 'html'] }
let g:syntastic_disabled_filetypes = ['rb']   " disable for this file type
let tex_no_error=1                            " underscores are not displayed as syntax errors
set statusline+=%#warningmsg#                 " show warning messages
set statusline+=%{SyntasticStatuslineFlag()}  " show message in quick fix
let loaded_tex_syntax_checker = 0             " turn of lacheck of the syntastic plugin
" }}}
" Tagbar {{{

let g:tagbar_compact = 1 " don't show the help in the tagbar

nnoremap <silent> <F4> :TagbarToggle<CR>

" }}}
" Tabularize {{{

" tabular: press ,b= to order indenting = separated terms with different spaces
" example:
"   ab = cd
"   abc = def
" mark the lines in visual mode, then press ,b=
" result:
"  ab  = cd
"  abc = def
" works for all specified chars below
nmap <leader>b= :Tabularize /=<CR>
vmap <leader>b= :Tabularize /=<CR>
nmap <leader>b: :Tabularize /:<CR>
vmap <leader>b: :Tabularize /:<CR>
nmap <leader>b/ :Tabularize /\/\/<CR>
vmap <leader>b/ :Tabularize /\/\/<CR>
nmap <leader>b" :Tabularize /"<CR>
vmap <leader>b" :Tabularize /"<CR>
nmap <leader>bt :Tabularize /& \\ldots &<CR>
vmap <leader>bt :Tabularize /& \\ldots &<CR>

" }}}
" Tocdown {{{

nnoremap <F2> :TocdownToggle<CR>

" }}}
" Vim-ruby {{{

let ruby_operators = 1    " create colors for ruby operators
let ruby_space_errors = 1 " mark whitespace characters

" }}}
" Vim-shell {{{

let g:shell_verify_urls = 1 " handle special URLs with dot at the end
" }}}
" Yankring {{{

let g:yankring_max_history = 1000 " save the last 1000 elements

noremap <leader>y :YRShow<CR>
noremap <leader>x :YRClear<CR>

" }}}
" ----------------------------------------------------------------}}}
" Filetype-specify -----------------------------------------------{{{

" Vimscript {{{

augroup filetype_vim
  au!
  au FileType vim setlocal foldmethod=marker
  au FileType vim let b:comment_leader = '" '
augroup END
" }}}
" Ruby {{{

augroup filetype_ruby
  au!
  au FileType ruby setlocal ts=2 sts=2 sw=2 expandtab textwidth=50
  " Press F11 to compile the actual file
  au FileType ruby map <F11> :!ruby "%:p"<CR>
  au FileType ruby let b:comment_leader = '# '
augroup END
" }}}
" Javascript {{{

augroup filetype_javascript
  au!
  au FileType javascript setlocal ts=4 sts=4 sw=4 expandtab textwidth=500
  au FileType javascript let b:comment_leader = '/ '
augroup END
" }}}
" Haml {{{

augroup filetype_haml
  au!
  au FileType haml setlocal ts=2 sts=2 sw=2 expandtab textwidth=500
  au FileType haml let b:comment_leader = '// '
augroup END
" }}}
" Html {{{

augroup filetype_html
  au!
  au FileType html setlocal ts=2 sts=2 sw=2 expandtab textwidth=500
augroup END
" }}}
" Mardown {{{

augroup filetype_markdown
  au!
  au FileType markdown setlocal ts=2 sts=2 sw=2 expandtab textwidth=100
augroup END
" }}}
" Sass {{{
augroup filetype_sass
  au!
  au FileType sass setlocal ts=2 sts=2 sw=2 expandtab textwidth=500
  au FileType sass let b:comment_leader = '// '
augroup END
" Text {{{

augroup filetype_txt
  au!
  au FileType txt setlocal ts=2 sts=2 sw=2 expandtab textwidth=110
augroup END
" }}}
" Tex {{{

augroup filetype_tex
  au!
  autocmd FileType tex setlocal ts=2 sts=2 sw=2 expandtab textwidth=100
  au FileType tex let b:comment_leader = '% '
augroup END
" }}}
" Yaml {{{

augroup filetype_yaml
  au!
  au FileType yaml setlocal ts=2 sts=2 sw=2 expandtab textwidth=500
  au FileType yaml let b:comment_leader = '# '
augroup END
" }}}
" ----------------------------------------------------------------}}}

" Filetype detecion ----------------------------------------------{{{

au! BufRead,BufNewFile *.js set filetype=javascript
au! BufRead,BufNewFile *.json set filetype=json
au! BufRead,BufNewFile *.haml set filetype=haml
au! BufRead,BufNewFile *.mkd,*.markdown,*.md set filetype=markdown
au! BufRead,BufNewFile *.rb set filetype=ruby
au! BufRead,BufNewFile *.sass,*.scss set filetype=scss
au! BufRead,BufNewFile *.tex,*.latex set filetype=tex
au! BufRead,BufNewFile *.textile set filetype=textile
au! BufRead,BufNewFile *.yml set filetype=yaml
" ----------------------------------------------------------------}}}
" Mac-Settings -------------------------------{{{
" Font {{{

if has('mac')
  " pretty nice font, if working under Mac
  set gfn=Menlo:h14 " love this font
  " 2. Change the key equivalent to cycle through tabs to CMD-Left/Right: >
endif

" }}}
" Cycle between different open MacVim windows {{{

if has('mac')
 " press Apple-< key to cycle
  noremap <D-lt> :maca _cycleWindows:<CR>

endif

" }}}
" Nabble marks with TextMate style {{{
if has("gui_macvim")
  let macvim_hig_shift_movement = 1
endif
" }}}
" -------------------------------------------- }}}

" Unix-Settings ---------------------------------{{{

if has('unix')
  " for the ack.vim plugin
  let g:ackprg="ack-grep -H --nocolor --nogroup --column"
endif

" ------------------------------------------------}}}


" " ## converting markdown to HTML by pressing ,md
" nmap <leader>md :%!$HOME/Dropbox/bin/Markdown.pl --html4tags <cr>


" ## automatically source the vimrc file after saving it changes appear
" without restarting Vim
" if has("autocmd")
"   autocmd bufwritepost .vimrc source $MYVIMRC
" endif

" list char settings {{{
set list " List mode: Show tabs as CTRL-I, show end of line with $.
" setting symbols for tabs, trails (whitespaces)
" extends shows when a file name goes out the view (you have to scroll like in NERDTree)
if has('mac')
"   set listchars=tab:»\ ,extends:¤,trail:·
    set listchars=tab:▸\ ,eol:¬,extends:❯,precedes:❮
else
"   set listchars=eol:$,tab:\|\|,extends:>,trail:~
  set listchars=tab:▸\ ,eol:¬,extends:❯,precedes:❮
endif
" }}}

" ## function to strip trailing whitespace
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

exe join(map(split(glob("~/.vim/credentials.vim"), "\n"), '"source " . v:val'), "\n")
