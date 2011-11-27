call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" ## File type detection
syntax on          " Enable syntax highlighting
filetype on        " Enable file type detection
filetype indent on " Enable file type-specific indenting
filetype plugin on " Enable file type-specific plugins

" ## General settings
set autoindent                              " following lines should also be intended
set autoread                                " re-read files that changed on disk without asking
set backspace=indent,eol,start              " allow backspacing over everything in insert mode
set ch=2                                    " height of the command line at the bottom
set encoding=utf-8                          " the terminal encoding
set expandtab                               " hitting Tab in insert mode will produce umber in spaces tabs instead of tabs
set fileencodings=utf-8,default,latin1      " the order of file encodings to try.
set guioptions-=T                           " turning of the tool bar
set history=5000                            " keep 5000 lines of command line history
set lines=999 columns=999                   " full screen when starting gvim (it's a hack)
set ls=1                                    " always show status line
set nocompatible                            " must be the first, because it changes other options as a side effect
set noerrorbells                            " don't make noise on error messages
set nomodeline                              " frequent security hole
set noswapfile                              " don't save swap files
set nowarn                                  " do not warn, when shell command update the file you edit in Vim
set number                                  " display line numbers
set numberwidth=1                           " using only 1 column (and 1 space) while possible
set ruler                                   " show the line and column number of the cursor position
set shell=/bin/bash                         " always use sh when executing commands with :!
set shiftwidth=2                            " how many columns text is indented with the indent operations (<< and >>)
set showcmd                                 " show (partial) command in the last line of the screen
set showmode                                " display in the left corner in which modus you are in vim
set softtabstop=2                           " how many columns
set synmaxcol=200                           " better scrolling for long lines
set spelllang=en_us                         " default language for spellchecker
set tabstop=2                               " how many columns a tab counts
set timeout timeoutlen=1000 ttimeoutlen=100 " scroll speed of the editor
set title                                   " show title in console title
set ttyfast                                 " smooth changes and better scrolling
let mapleader = ","                         " change the leader to be a comma vs slash
set laststatus=2                            " always hide the status line
set scrolloff=4 " minimal number of screen lines to keep above and below the cursor
set viminfo='1000000,f1 "save marks for 1 million files ('1000000), save global marks
autocmd BufNew * if winnr('$') == 1 | tabmove99 | endif " move tabs to the end for new, single buffers (exclude splits)
set ignorecase " ignore upper- and lowercase letters during a search
set hlsearch   " highlight all finding for a search
set incsearch  " do incremental searching, that means search after the string when you begin writing

" ## backup setting
set backup                  " save files after close
set writebackup             " make a backup of the original file when writing
set noswapfile              " don't save swap files
set updatetime=2000         " Write swap files after 2 seconds of inactivity.
set backupext=~             " backup for is ~
set backupdir=~/.vim/backup " backups are written to ~/.backup/ if possible.
set backupcopy=yes          " keep attributes of the original file

" ## settings for plugins (start)

" ## autocorrect
source $HOME/.vim/bundle/vim-autocorrect/autocorrect.vim " sourcing the file

" ## command-t
let g:CommandTMaxFiles = 20000                      " the max files that will be considered when scanning current directory
let g:CommandTMaxDepth = 20                         " number of levels that will be considered when scanning current directory
let g:CommandTAlwaysShowDotFiles = 1                " also search after matching with dotted files
let g:CommandTScanDotDirectories = 1                " do not search in dot directory
let g:CommandTMatchWindowAtTop = 0                  " the match window will appear at the top of the editor window
let g:CommandTAcceptSelectionMap = '<CR>'           " enter open findings in same window
let g:CommandTAcceptSelectionSplitMap = '<C-s>'     " CTRL-Enter will makes a horizontal split
let g:CommandTAcceptSelectionVSplitMap = '<C-v>'    " CTRL-v will make a vertical split
let g:CommandTAcceptSelectionTabMap = '<C-t>'       " CTRL-t will open the file in a new tab
set wildignore+=*.o,*.obj,.git,.svn,vendor/rails/** " which files should not be matched in command-t

" ## gist.vim
let g:github_user = 'matthias-guenther'
let g:github_token = '6507044b62b3e80e02a9b764b52bdd50'
let g:gist_detect_filetype = 1 " detecting file type for each gist
let g:gist_open_browser_after_post = 1 " open the gist after each post
if has("mac")
  let g:gist_clip_command = 'pbcopy'
elseif has("unix")
  let g:gist_clip_command = 'xclip -selection clipboard'
endif

" ## IndexSearch
let g:indexed_search_colors = 1 " turn of colors for messages
let g:indexed_search_shortmess = 1 " shorer messages

" ## hammer
" Mapping for the hammer plugin
map <leader>m :Hammer<CR>

" ## NERDTree
let g:NERDTreeDirArrows = 1           " use arrows for the tree structure
let g:NERDChristmasTree = 0           " less colorful tree
let g:NERDTreeHighlightCursorline = 0 " no  cursor highlight in the tree
let g:NERDTreeMouseMode = 3           " one click will open the (and files)
let g:NERDTreeWinPos = 'right'        " display the NERDTree on the right
let g:NERDTreeWinSize =30             " the width of the NERDTree when it opens

" ## notes
let g:notes_directory = '~/Dropbox/notes'            " path of main directory
let g:notes_suffix = '.txt'                          " default file ending of note files
autocmd BufEnter ~/Dropbox/notes/* silent! lcd %:p:h " path of the notes directory

" ## session
let g:session_autosave = 'no' " disable automatic saving when quitting a session
let g:session_autoload = 'no' " disable asking to load the previous session

" ## snipmate
let g:snippets_dir = '~/.vim/snippets' " setting of the snipmate directory
" setting file types for all different files => makes it easier for snipmate
autocmd! BufRead,BufNewFile *.haml set ft=haml
autocmd! BufRead,BufNewFile *.js set ft=js
autocmd! BufRead,BufNewFile *.mkd,*.markdown,*.md set ft=markdown
autocmd! BufRead,BufNewFile *.rb set ft=ruby
autocmd! BufRead,BufNewFile *.sass,*.scss set ft=scss
autocmd! BufRead,BufNewFile *.tex,*.latex set ft=tex
autocmd! BufRead,BufNewFile *.textile set ft=textile
autocmd! BufRead,BufNewFile *.yml set ft=yaml

" ## syntastic
let g:syntastic_enable_signs=1                " setting signs for errors (arrows)
let g:syntastic_auto_loc_list=1               " open/close toc of errors
let g:syntastic_auto_jump=0                   " don't jump to the first error
let g:syntastic_disabled_filetypes = ['html'] " disable for this file type
let tex_no_error=1                            " underscores are not displayed as syntax errors
set statusline+=%#warningmsg#                 " show warning messages
set statusline+=%{SyntasticStatuslineFlag()}  " show message in quickfix
let loaded_tex_syntax_checker = 0             " turn of lacheck of the syntastic plugin

" ## Sweet Vim RSpec
let $SWEET_VIM_RSPEC_SHOW_PASSING="true" " output passes in quickfix window

" ## tagbar
let g:tagbar_compact = 1 " don't show the help in the tagbar

" ## yankring
let g:yankring_max_history = 1000 " save the last 1000 elements
nmap <leader>y :YRShow<CR>
nmap <leader>x :YRClear<CR>

" ## vim-css-color
let g:cssColorVimDoNotMessMyUpdatetime = 1 " is used when updatetime value set by plugin (100ms) is interfering with your configuration.

" ## vim-ruby
let ruby_operators = 1    " create colors for ruby operators
let ruby_space_errors = 1 " mark whitespace characters

" ## vim-shell
let g:shell_verify_urls = 1 " handle special urls with dot at the end

" ## vim-NERDTree tabs
let g:nerdtree_tabs_open_on_gui_startup = 0
map t <plug>NERDTreeTabsToggle<CR>

" ## settings for plugins (end)

" # better statusline
set statusline=\CWD:\ %r%{CurDir()}%h\ \ \ Line:\ %l/%L:%c " Format the statusline

function! CurDir()
    let curdir = substitute(getcwd(), '/Users/amir/', "~/", "g")
    return curdir
endfunction

" ## mappings for ruby (F1 compile current file with ruby, F2 compile current file with RSpec)
autocmd FileType ruby map <F1> :!ruby "%:p"<CR>
autocmd FileType ruby map <F2> :!rspec "%:p"<CR>

" ## converting markdown to HTML by pressing ,md
nmap <leader>md :%!$HOME/Dropbox/bin/Markdown.pl --html4tags <cr>

" ## automatically source the vimrc file after saving it changes appear
" without restarting vim
if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif

" ## press SHIFT-q to reformat the selected text
map Q gq

" ## CTRL-q will save the file
nmap <c-q> :w<CR>
imap <c-q> <Esc>:w<CR>a

" ## show invisible symbols for editing
" turn on with ml and off with ,u
nmap <leader>l :set list<CR>
nmap <leader>u :set list!<CR>
set list " List mode: Show tabs as CTRL-I, show end of line with $.
" setting symbols for tabs, trails (whitespaces)
" extends shows when a file name goes out the view (you have to scroll like in NERDTree)
set listchars=tab:»\ ,extends:¤,trail:·

" ## color schemes
colorscheme ir_black " [railscasts, vividchalk]

" source mappings
exe join(map(split(glob("~/.vim/mappings/*.vim"), "\n"), '"source " . v:val'), "\n")
exe join(map(split(glob("~/.vim/functions/*.vim"), "\n"), '"source " . v:val'), "\n")

" ## If editing a .txt file then skip line numbers
au! BufRead,BufNewFile *.txt set nonu

" ## function to strip trailing whitespaces
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


" ## distinguish between different operation systems and change the text-size
if has('mac')
  set gfn=Menlo:h14
  " 2. Change the key equivalent to cycle through tabs to CMD-Left/Right: >
  nmap <D-lt> :maca _cycleWindows:<CR>
elseif has('unix')
  " for the ack.vim plugin
  let g:ackprg="ack-grep -H --nocolor --nogroup --column"
endif

" ## CTRL-SHIFT+arrow nables the mark method for like textmate
if has("gui_macvim")
  let macvim_hig_shift_movement = 1
endif

" ## custom setting for each file type
if has("autocmd")
  filetype plugin indent on
      autocmd FileType haml       setlocal ts=2 sts=2 sw=2 expandtab textwidth=500
      autocmd FileType html       setlocal ts=2 sts=2 sw=2 expandtab textwidth=500
      autocmd FileType javascript setlocal ts=4 sts=4 sw=4 expandtab textwidth=500
      autocmd FileType markdown   setlocal ts=2 sts=2 sw=2 expandtab textwidth=100
      autocmd FileType make       setlocal ts=4 sts=4 sw=4 expandtab textwidth=500
      autocmd FileType ruby       setlocal ts=2 sts=2 sw=2 expandtab textwidth=500
      autocmd FileType sass       setlocal ts=2 sts=2 sw=2 expandtab textwidth=500
      autocmd FileType tex        setlocal ts=2 sts=2 sw=2 expandtab textwidth=100
      autocmd FileType txt        setlocal ts=2 sts=2 sw=2 expandtab textwidth=110
      autocmd FileType yaml       setlocal ts=2 sts=2 sw=2 expandtab textwidth=500
  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif
  augroup END
else
endif

" # comment in visual mode press ,c (for uncomment ,u)
au FileType haskell,vhdl,ada let b:comment_leader = '-- '
au FileType vim let b:comment_leader = '" '
au FileType c,cpp,java,scala,sass,scss let b:comment_leader = '// '
au FileType sh,make,rb,ruby,php let b:comment_leader = '# '
au FileType haml let b:comment_leader = '/ '
au FileType tex let b:comment_leader = '% '

noremap <silent> ,c :<C-B>sil <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:noh<CR>
noremap <silent> ,u :<C-B>sil <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:noh<CR>


" LateX SUITE HACKS
set grepprg=grep\ -nH\ $* " grep works with LaTeX-Suite
" ## autoload dvi after each save in Vim (it runs the latex suite)
au BufWritePost *.tex silent call Tex_CompileLatex()
au BufWritePost *.tex silent !pkill -USR1 xdvi.bin
" settings for determining tex file type
:let g:tex_flavor = "latex"
" default output of compiling (pressing ,lj) is dvi
:let g:Tex_DefaultTargetFormat="dvi"
if has("mac")
  " http://stackoverflow.com/questions/6306814/enable-inversearch-for-dvi-documents-in-macvim
  let g:vimPath = "/Applications/MacVim.app/Contents/MacOS/Vim"
  :let g:Tex_ViewRule_dvi = 'xdvi -editor "' . g:vimPath . ' --servername xdvi --remote +\%l \%f" $* &'
  :let g:Tex_ViewRuleComplete_dvi = 'xdvi -editor "' . g:vimPath . ' --servername xdiv --remote +\%l \%f" $* &'
  map ,lj :execute '!cd ' . expand(Tex_GetMainFileName(':p:h')) . ' && xdvi -editor "' . g:vimPath . ' --servername 'v:servername' --remote-wait +\%l \%f" -sourceposition ' . line(".") . substitute(expand('%:p'),expand(Tex_GetMainFileName(':p:h')).'\/','','') . " " . expand(Tex_GetMainFileName(':p:r')) . ".dvi &" <CR><CR>
elseif has("unix")
  " inverse | forward search (http://forum.ubuntuusers.de/topic/vim-vim-latexsuite-vim-gtk)
  " her are the forward search
    :let g:Tex_ViewRule_dvi = 'xdvi -editor "vim --servername xdvi --remote +\%l \%f" $* &'
    :let g:Tex_ViewRuleComplete_dvi = 'xdvi -editor "vim --servername xdiv --remote +\%l \%f" $* &'
    map ,lj :execute '!cd ' . expand(Tex_GetMainFileName(':p:h')) . ' && xdvi -editor "vim --servername 'v:servername' --remote-wait +\%l \%f" -sourceposition ' . line(".") . substitute(expand('%:p'),expand(Tex_GetMainFileName(':p:h')).'\/','','') . " " . expand(Tex_GetMainFileName(':p:r')) . ".dvi &" <CR><CR>
    let Tlist_Ctags_Cmd='/usr/local/bin/ctags'
    set tags=tags
endif
