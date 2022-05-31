scriptencoding utf-8

let g:neosnippet#expand_word_boundary = 1
let g:plug_threads = 40

" Grab plug.vim if it does not exist
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Get thesaurus
if empty(glob('~/.vim/thesaurus'))
  " create directory
  silent !mkdir ~/.vim/thesaurus
  " get german thesaurus
  silent !wget https://www.openthesaurus.de/export/OpenThesaurus-Textversion.zip -O ~/.vim/thesaurus/mthesaur.zip && unzip ~/.vim/thesaurus/mthesaur.zip -d ~/.vim/thesaurus/
  " get english thesaurus
  silent !wget https://raw.githubusercontent.com/statico/dotfiles/master/.vim/mthes10/mthesaur.txt -O ~/.vim/thesaurus/mthesaur.txt && sed -i 's/,/;/g' ~/.vim/thesaurus/mthesaur.txt
  silent !rm ~/.vim/thesaurus/mthesaur.zip ~/.vim/thesaurus/LICENSE.txt
endif

" Get font
if empty(glob('~/.fonts'))
  silent !mkdir ~/.fonts && cd ~/.fonts && curl -fLo DroidSansMonoForPowerlinePlusNerdFileTypes.otf https://raw.githubusercontent.com/ryanoasis/nerd-fonts/0.6.0/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20for%20Powerline%20Nerd%20Font%20Complete.otf && sudo chmod 777 DroidSansMonoForPowerlinePlusNerdFileTypes.otf
endif

call plug#begin('~/.vim/plugged/')

Plug 'alvan/vim-closetag', 'f9fd067'
Plug 'brooth/far.vim', '3376dc5'
Plug 'christoomey/vim-tmux-navigator', '3e83ddc'
Plug 'cohama/lexima.vim', '85cfff9'
Plug 'francoiscabrol/ranger.vim', 'b77a534'
Plug 'gregsexton/gitv', { 'commit': '14fcbf5', 'on': ['Gitv'] }
Plug 'itchyny/lightline.vim', 'ff74d65'
Plug 'jamessan/vim-gnupg', 'e7b6648'
Plug 'janko-m/vim-test', '1edd7be'
Plug 'jreybert/vimagit', {'commit': '595af14', 'on': ['Magit'] }
Plug 'junegunn/vader.vim', { 'commit': '654bbf7', 'for': 'vim' }
Plug 'lervag/vimtex', {'commit': 'c7a6d2e', 'for': 'tex' }
Plug 'ludovicchabant/vim-gutentags', 'c400613'
Plug 'majutsushi/tagbar', 'f579273'
Plug 'matze/vim-move', '3409db6'
Plug 'mbbill/undotree', 'ad08a88'
Plug 'mhinz/vim-grepper', 'a534baf'
Plug 'plasticboy/vim-markdown', 'a316954'
Plug 'reedes/vim-lexical', 'fb42333'
Plug 'reedes/vim-litecorrect', '8d5f233'
Plug 'tpope/vim-dispatch', 'ca10dc1'
Plug 'tpope/vim-endwise', 'd565526'
Plug 'tpope/vim-fugitive', 'be2ff98'
Plug 'tpope/vim-surround', 'e49d6c2'
Plug 'tyru/caw.vim', 'd4a4a73'
Plug 'vim-ruby/vim-ruby', { 'commit': '074200f', 'for': 'ruby' }
Plug 'tyru/open-browser.vim', 'e2bfabf'
Plug 'unblevable/quick-scope', 'd5882cb'
Plug 'vim-scripts/IndexedSearch', '500a64a'
Plug 'w0rp/ale', '5d5ba2a'
Plug 'wellle/tmux-complete.vim', '5d371f2'
Plug 'xolox/vim-misc', '1.17.6'
Plug 'xolox/vim-notes', '0.33.4'
Plug 'Shougo/denite.nvim', '6ba9a00'
Plug 'Shougo/neosnippet.vim', '867149c'
Plug 'Shougo/neoyank.vim', 'ad56eca'

Plug 'junegunn/fzf', { 'tag': '0.16.8', 'dir': '~/.fzf', 'do': './install --all' }

if has('lua')
  Plug 'Shougo/neocomplete.vim', '9af19a78'
endif

call plug#end()

" General settings {{{
set laststatus=2
set number                                  " display line numbers
set modeline                                " check first lines of files for style information
set noerrorbells                            " turn of nasty error sounds
set autoindent                              " Copy indent from current line when starting a new line
set autoread                                " automatically read a file that has changed on disk
set autowrite                               " automatically write a file when moving to another buffer
set showbreak=↪                             " show the symbol for wrapped lines
set history=5000                            " number of lines for command line history
set showmode                                " show the current modal mode
set showcmd                                 " show (partial) command in the last line of the screen
set nowarn                                  " do not warn, when shell command update the file you edit in Vim
set backspace=indent,eol,start              " allow backspacing over everything in insert mode
set ruler                                   " show the line and column number of the cursor position
set numberwidth=2                           " using only 2 column for number line presentation
set lazyredraw                              " no window redrawing during operations like macros, registers, ...
set ttyfast                                 " fast terminal connection, more characters will be sent to the screen
set splitbelow                              " splitting a window will put the new window below the current one
set splitright                              " splitting a window will put the new window right the current one
set spelllang=en_us                         " default language for spell checker
set spellfile=$HOME/.vim/spell/en.utf-8.add " spell file for additional correct English words
set spellsuggest=best,5                     " only display the 5 best suggestions
set viminfo='1000000,f1                     " save marks for 1 million files ('1000000), save global marks
set infercase                               " autocompletion in Insert Mode is case sensitive
set shortmess+=I                            " don't show startup message when opening Vim without a file
set noautochdir                             " don't change the current working directory when opening a new file
set cpoptions+=$                            " `cw` put a $ at the end instead of pure deletion
set completeopt=longest,menuone,preview,    " modes for auto completion popup
                                            " longest - only insert the longest common text of the matches.
                                            " menuone - use the popup menu also when there is only one match.
                                            " preview - show extra information about the currently selected
set tabstop=2                               " how many columns a tab counts
set shiftwidth=2                            " how many columns text is indented with the indent operations (<< and >>)
set softtabstop=2                           " how many columns
set expandtab                               " hitting tab in insert mode will produce number in spaces instead of tabs
set textwidth=100                           " maximum of text that is being inserted
set fillchars=""                            " get rid of silly characters in separators in the CMD
set incsearch " highlight search after you type it
" so /foo matches FOO and fOo, but /FOO only matches the former)
set ignorecase                              " case insensitive search
set smartcase                               " canceling out ignore for uppercase letter in search
set nohlsearch
set noswapfile                              " don't save swap files

set linebreak " wrap at a character in the breakat option

" external tool when using grep
if executable('pt')
  set grepprg=pt
elseif executable('ag')
  set grepprg=ag
endif

if has('cryptmethod')
  set cryptmethod=blowfish                    " encryption algorithm
endif

" Remove Vim' automatic comment prefixing (http://tilvim.com/2013/12/30/remove-comment-prefix-2.html)
autocmd FileType * setlocal formatoptions-=r formatoptions-=o

let mapleader = "," " change the leader to be a comma vs. backslash if not given

let &scrolloff=999-&scrolloff " current view is always centered


let file = expand("%")
if file=~"padrinocasts.md"
    colorscheme delek
else
    colorscheme github
endif

set tags=tags,./tags,gems.tags,./gems.tags

" }}}
" Backups {{{

if !isdirectory($HOME . '/.vim/backup')
  call mkdir($HOME . '/.vim/backup')
endif

set backupext=~                 " backup file extension
set backupdir=$HOME/.vim/backup " directory of backups
set backupcopy=yes              " keep attributes of the original file
set backup                      " save files after close
set writebackup                 " make a backup of the original file when writing

" }}}
" Settings to let netrw looks like a project file brower {{{
" Inspiration from https://shapeshed.com/vim-netrw/
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25

" }}}
" Detect YAML front matter parts in markdown files as comments {{{

" Marking YAML front matter information in markdown files as comments
autocmd BufNewFile,BufRead */_posts/*.md syntax match Comment /\%^---\_.\{-}---$/

" }}}
" Settings for autocmpletion in insert mode <C-n> {{{

" set autocompletion when CTRL-P or CTRL-N are used.
" It is also used for whole-line
" . ... current buffer
" i ... current and included files
" b ... other loaded buffers that are in the buffer list
" w ... buffers from other windows
" u ... scan unloaded buffers that are in the buffer list
" U ... scan buffers that are not in the buffer list
" t ... tag completion
set complete=.,i,b,w,u,U,t
set showfulltag " when completing by tag, show the whole tag, not just the function name

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
" Enable manpage.vim {{{

runtime! ftplugin/man.vim

" }}}
" Functions {{{
" Trailing whitespace removal {{{
fu! <SID>StripTrailingWhitespaces()
  " preparation: save last search, and cursor position.
  let _s=@/
  let l = line(".")
  let c = col(".")
  " do the business:
  %s/\s\+$//e
  " Clean up: restore previous search history, and cursor position
  let @/=_s
  call cursor(l, c)
endf

" when file is saved, call the function to remove trailing whitespace
au BufWritePre * :call <SID>StripTrailingWhitespaces()
" }}}
" Insert date in the form yyyy-mm-dd at the end of a line, <F5> {{{
fu! InsertSpaceDate()
  let @x = " "
  let @x = @x . strftime("%Y-%m-%d")
  normal! "xp
  silent exec line(".") . "s/TODO/DONE"
endf

no <silent> <F5> $:call InsertSpaceDate() <CR>
ru functions/insert_spacedate.vim
" }}}
" Close all buffers except the current one :Bdeleteonly {{{
" Found solution under
" http://vim.1045645.n5.nabble.com/Close-all-buffers-except-the-one-you-re-in-td1183357.html
function! Buflist()
    redir => bufnames
    silent ls
    redir END
    let list = []
    for i in split(bufnames, "\n")
        let buf = split(i, '"' )
        call add(list, buf[-2])
    endfor
    return list
endfunction

function! Bdeleteonly()
    let list = filter(Buflist(), 'v:val != bufname("%")')
    for buffer in list
        exec "bdelete ".buffer
    endfor
endfunction

command! BdelOnly :silent call Bdeleteonly()
" }}}
" }}}
" Plugin settings {{{

ru! settings/*.vim
ru macros/matchit.vim " enable better matching for % command

" }}}
" Mappings {{{

ru mappings/commandline.vim               " <C-b> go char left, <C-f> go char right, <C-p> go previews command, <C-n> go next command
ru mappings/copy_paste_from_clipboard.vim " <C-c> for copy, <leader><C-v> for paste
ru mappings/esc_with_jk.vim               " emulare ESC with jk
ru mappings/fzf.vim                       " <C-p> start file search
ru mappings/gitv.vim                      " ,gv (global view) and ,gV (file specific commits) for starting the browser
ru mappings/keep_cursor_joining_lines.vim " indent joining lines the right way
ru mappings/moving_wrapped_lines.vim      " Use hjkl in wrapped-lined files
ru mappings/neoyank.vim                   " <leader>y search the yank history
ru mappings/pry.vim                       " ,pi toggles 'require pry; binding pry'
ru mappings/quickediting.vim              " ,ba; ,bm; ,br; ,ev to edit files of vim repos
ru mappings/ranger.vim                    " F2 will call :Ranger
ru mappings/tagbar.vim                    " F3 will call :TagbarToggle
ru mappings/vim_test.vim                  " <leader>t :TestNearest, <leader>T :TestFile, <leader>a :TestSuite, <leader>l :TestLastVisit, <leader>g :TestVisit

" ,d to copy the file path to clipboard, very handy for file name completion for vimbook
nmap <leader>d :call system("xclip -i -selection clipboard", expand("%"))<CR>

" Spellchecker: press ,s to toogle between spellchecker
nn <silent> <leader>s :set spell!<CR>

" Folding Toggling with <space>
nn <space> za

" }}}
" Always go at the beginning of git commit message
augroup gitCommitEditMsg
  autocmd!
  autocmd BufReadPost *
    \ if @% == '.git/COMMIT_EDITMSG' |
    \   exe "normal gg" |
    \ endif
augroup END


" Textwrapping for commit messages
" Credit http://stackoverflow.com/questions/11023194/git-vim-automatically-wrap-long-commit-messages
autocmd Filetype gitcommit set textwidth=60

let g:mustache_abbreviations = 1

