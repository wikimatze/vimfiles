if has('vim_starting')
  set nocompatible               " Be iMproved
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim', { 'name' : 'neobundle' }

NeoBundle 'AndrewRadev/switch.vim'        , { 'rev': 'd81c8a', 'name': 'switch' }
NeoBundle 'Raimondi/delimitMate'          , { 'rev': '38487b', 'name': 'delimitmate' }
NeoBundle 'Shougo/neocomplete.vim'        , { 'rev': '0b1e06', 'name': 'neocomplete' }
NeoBundle 'Shougo/unite.vim'              , { 'rev': '70bb85', 'name': 'unite' }
NeoBundle 'dkprice/vim-easygrep'          , { 'rev': 'df9fad', 'name': 'easygrep' }
NeoBundle 'godlygeek/tabular'             , { 'rev': '60f256', 'name': 'tabular' }
NeoBundle 'hail2u/vim-css3-syntax'        , { 'rev': 'd2ce74', 'name': 'css3-syntax' }
NeoBundle 'itchyny/lightline.vim'         , { 'rev': '147cfb', 'name': 'lightline' }
NeoBundle 'jamessan/vim-gnupg'            , { 'rev': '6e9f52', 'name': 'gnupg' }
NeoBundle 'matthias-guenther/tocdown'     , { 'rev': '10b6cb', 'name': 'tocdown' }
NeoBundle 'mattn/calendar-vim'            , { 'rev': 'b340c4', 'name': 'calendar' }
NeoBundle 'matze/vim-move'                , { 'rev': '477bfb', 'name': 'move' }
NeoBundle 'mbbill/undotree'               , { 'rev': 'db4db7', 'name': 'undotree' }
NeoBundle 'mhinz/vim-signify'             , { 'rev': '2b05c7', 'name': 'signify' }
NeoBundle 'msanders/snipmate.vim'         , { 'rev': 'f5a75d', 'name': 'snipmate' }
NeoBundle 'nelstrom/vim-markdown-folding' , { 'rev': '3e84f2', 'name': 'markdown-folding' }
NeoBundle 'othree/html5-syntax.vim'       , { 'rev': 'fdbd5b', 'name': 'html5-syntax' }
NeoBundle 'scrooloose/nerdtree'           , { 'rev': 'b0bb78', 'name': 'nerdtree' }
NeoBundle 'scrooloose/syntastic'          , { 'rev': 'f6d584', 'name': 'syntastic' }
NeoBundle 'sk1418/blockit'                , { 'rev': 'da53b6', 'name': 'blockit' }
NeoBundle 't9md/vim-choosewin'            , { 'rev': '68a0ec', 'name': 'choosewin' }
NeoBundle 'terryma/vim-multiple-cursors'  , { 'rev': '35028b', 'name': 'multiple-cursors' }
NeoBundle 'tpope/vim-endwise'             , { 'rev': 'c3d8fe', 'name': 'endwise' }
NeoBundle 'tpope/vim-fugitive'            , { 'rev': 'd6f176', 'name': 'fugitive' }
NeoBundle 'tpope/vim-speeddating'         , { 'rev': '9dc081', 'name': 'speeddating' }
NeoBundle 'tpope/vim-surround'            , { 'rev': '42e9b4', 'name': 'surround' }
NeoBundle 'tsukkee/unite-help'            , { 'rev': '5a8dc6', 'name': 'unite-help' }
NeoBundle 'tsukkee/unite-tag'             , { 'rev': '26d672', 'name': 'unite-tag' }
NeoBundle 'tyru/open-browser.vim'         , { 'rev': '54e758', 'name': 'open-browser' }
NeoBundle 'vim-ruby/vim-ruby'             , { 'rev': '3ffc0a', 'name': 'ruby' }
NeoBundle 'vim-scripts/AutoTag'           , { 'rev': 'ef0a37', 'name': 'autotag' }
NeoBundle 'xolox/vim-misc'                , { 'rev': '8551f2', 'name': 'misc' }
NeoBundle 'xolox/vim-notes'               , { 'rev': '14838b', 'name': 'notes' }


NeoBundle 'itchyny/landscape.vim'         , { 'rev': 'bb79a1', 'name' : 'color-landscape' }

NeoBundle 'Shougo/vimproc.vim', { 'rev': '92b34f',
  \ 'build' : {
  \     'mac' : 'make -f make_mac.mak',
  \     'unix' : 'make -f make_unix.mak',
  \    },
  \ }

syntax on          " enable syntax highlighting
filetype on        " enable file type detection
filetype indent on " enable file type-specific indenting
filetype plugin on " enable file type-specific plugins

" Installation check.
NeoBundleCheck

" General settings {{{

set number                                  " display line numbers
set modeline                                " check first lines of files for style information
set noerrorbells                            " turn of nasty error sounds
set autoindent                              " Copy indent from current line when starting a new line
set autoread                                " automatically read a file that has changed on disk
set showbreak=↪                             " show the symbol for wrapped lines
set history=5000                            " number of lines for command line history
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
set grepprg=ag                              " tool when using grep

if has('cryptmethod')
  set cryptmethod=blowfish                    " encryption algorithm
endif

" Remove Vim' automatic comment prefixing (http://tilvim.com/2013/12/30/remove-comment-prefix-2.html)
autocmd FileType * setlocal formatoptions-=r formatoptions-=o

let mapleader = "," " change the leader to be a comma vs. backslash if not given

let &scrolloff=999-&scrolloff " current view is always centered

colorscheme landscape


set tags=tags,./tags,gems.tags,./gems.tags

" }}}
" Settings for backups {{{

if !isdirectory($HOME . '/.vim/backup')
  call mkdir($HOME . '/.vim/backup')
endif

set backupext=~                 " backup file extension
set backupdir=$HOME/.vim/backup " directory of backups
set backupcopy=yes              " keep attributes of the original file
set backup                      " save files after close
set writebackup                 " make a backup of the original file when writing
set noswapfile                  " don't save swap files

" }}}
" Settings for my blog with jekyll {{{

" Marking YAML front matter information in markdown files as comments
autocmd BufNewFile,BufRead */_posts/*.md syntax match Comment /\%^---\_.\{-}---$/

" }}}
" Settings for autocmpletion in insert mode <C-n> {{{

" set autocompletion when CTRL-P or CTRL-N are used.
" It is also used for whole-line
" . ... scan the current buffer
" b ... scan other loaded buffers that are in the buffer list
" w ... buffers from other windows
" u ... scan unloaded buffers that are in the buffer list
" U ... scan buffers that are not in the buffer list
" ] ... tag completion
" i ... scan current and included files
set complete=i,.,b,w,u,U,]

" }}}
" Settings for displaying list chars {{{

" trails - white spaces
" extends: shows when a file name goes out the view (you have to scroll right in NERDTree)
" precedes: shows when a file name goes out the view (you have to scroll left like in NERDTree)
" nbsp: character to show for a non-breakable space
set listchars=tab:▸\ ,extends:❯,precedes:❮,trail:.,nbsp:~
set list             " enable predefined symbols for tabs, trails, ...

" }}}
" Settings for wildmenu completion {{{

if has("wildmenu")
  set wildmenu                           " enable a navigable list of suggestions
  set wildmode=full                      " zsh full-match, starts over with first match after last match reached
  set wig+=.git,.hg,.svn                 " version control
  set wig+=*.bmp,*.gif,*.ico,*.jpg,*.png " images
  set wig+=*.aux,*.out,*.toc             " LaTeX intermediate files
  set wig+=.DS_Store                     " Mac
  set wig+=*~,*.swp,*.tmp                " tmp and backup files
endif


" }}}

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

" Always go at the beginning of git commit message
augroup gitCommitEditMsg
  autocmd!
  autocmd BufReadPost *
    \ if @% == '.git/COMMIT_EDITMSG' |
    \   exe "normal gg" |
    \ endif
augroup END

" Highlight words to avoid in tech writing
" =======================================
"
" obviously, basically, simply, of course, clearly,
" just, everyone knows, However, So, easy

" http://css-tricks.com/words-avoid-educational-writing/

highlight TechWordsToAvoid ctermbg=red ctermfg=white

function MatchTechWordsToAvoid()
  match TechWordsToAvoid /\c\<\(obviously\|basically\|simply\|of\scourse\|clearly\|just\|everyone\sknows\|however\|so\|easy\)\>/
endfunction

autocmd FileType markdown call MatchTechWordsToAvoid()
autocmd BufWinEnter *.md call MatchTechWordsToAvoid()
autocmd InsertEnter *.md call MatchTechWordsToAvoid()
autocmd InsertLeave *.md call MatchTechWordsToAvoid()
autocmd BufWinLeave *.md call clearmatches()

