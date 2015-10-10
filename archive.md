# Archive

Here is a list of plugins I used in the past and removed them due the lack of usage.

## [ack.vim](https://github.com/mileszs/ack.vim)
You can perform ack commands in Vim.

- `:Ack {pattern} [{directory}]` - the basic command to search after words in your project
- shortcuts for navigation:
  - `:o` ... open the selected file in the current window
  - `:go` ... open preview but will stay in the quickfix preview window
  - `:t` ... open the selected file in a new tab
  - `:v` ... vertical split
  - `:q` ... quit the Ack window

## [calendar.vim](https://github.com/mattn/calendar-vim)
Opens a split with a calendar inside.

- `:Calendar` ... opens a vertical split
- `<arrow-keys>` ... move around in the calendar
- `q` ... will close the calendar


## [coffee-script](https://github.com/kchmck/vim-coffee-script)
coffee script support.


## [colorv](https://github.com/Rykka/ColorV)
Display Hex Color with real colors in Vim.


## [command-t](https://github.com/wincent/Command-T)
File search in the actual directory.

- `:CommandTFlush` - update the path cache and also include new and deleted files
- `Installation`: $ ~/.vim/bundle/Command-t; rake make
- shortcuts:
  - `<C-j>` ... go down
  - `<C-k>` ... go up
  - `<C-t>` ... opens the file in a new tab
  - `<C-s>` ... opens the file under the cursor with a *horizontal* split
  - `<C-v>` ... opens the file under the cursor with a *vertcial* split
  - `ESC` or `<C-c>` ... closing the open dialog
  - `<C-u>` ... clean the matching window
  - `<C-ENTER>` ... opens the file under the cursor in a new window
- mappings:
    - `<Leader>t`  ... call *:CommandT* command to open a specified file
        - `:CommandT ../path/to/other/files` ... search in the specified path
    - `<Leader>b`  ... opens the buffer for this files after which were searched in the past
- custom settings:
<pre>
    let g:CommandTMaxFiles = 20000            " max files for scanning the directory
    let g:CommandTMaxDepth = 20               " number of folder levels for searching
    let g:CommandTAlwaysShowDotFiles = 1      " include dot files for scanning
    let g:CommandTScanDotDirectories = 1      " don't search in dot directory
    let g:CommandTMatchWindowAtTop = 0        " the match window will appear at the top of the editor window
    let g:CommandTAcceptSelectionMap = '<CR>' " enter open findings in same window
    let g:CommandTAcceptSelectionSplitMap = '<C-s>'     " Ctrl-s will makes a horizontal split
    let g:CommandTAcceptSelectionVSplitMap = '<C-v>'    " Ctrl-v will make a vertical split
    let g:CommandTAcceptSelectionTabMap = '<C-t>'       " Ctrl-t will open the file in a new tab
    set wildignore+=*.o,*.obj,.git,.svn,vendor/rails/** " not matching files</pre>


## [cucumber](https://github.com/tpope/vim-cucumber)
Syntax highlighting for cucumber files.


## [ctrlp](http://kien.github.com/ctrlp.vim/)
Full path fuzzy file, MRU, tag, and a tons of options.

- `<C-t>` ... will open the finding match in a tab
- `<C-v>` ... will open the finding match in a vertical split
- `<C-x>` ... will open the finding match in a horizontal split
- `<C-f>` + `<C-b>` ... cycle between search modes (buffer, files, MRU, tags)
- `<C-z>` ... to mark multiple files and `<C-o>` to open them splitted, if you press only enter it will open it
  normally
- `:CtrlPTag<CR>` ... Search after the tags


## [dbext](http://www.vim.org/scripts/script.php?script_id=356)
Connect to your database to perform custom queries.

- `<leader>sel` ... execute the query
- `:DBResultsClose` ... close the result window


## [easymotion](https://github.com/Lokaltog/vim-easymotion)
Easier and faster use of motions.

- `<leader><leader>w | e | j | ..` ... jump to the matching words on the screen
- `<leader><leader>t | T` ... search after the target character forward (`t`) and backward (`T`)


## [easytags](https://github.com/xolox/vim-easytags)
Call exuberant Ctags within Vim.

- `:UpdateTags` ... will run `ctags -R .` for the current directory but you can pass the directory you want as an argument
- `:HighlightTags` ... will mark the relevant tags in the current file
- custom settings:
<pre>
  set tags=./tags;                  " name of the tags files which is relative to the project
  let g:easytags_dynamic_files = 1  " write first existing seen tag file by Vim (refer to echo &tags)
  let g:easytags_on_cursorhold = 0  " disable automatic update
  let g:easytags_auto_update = 0    " don't update the text, when stop working
  let g:easytags_auto_highlight = 0 " don't highlight the text, when stop working
  let g:easytags_autorecurse = 1    " updating files below all directories of the current one
  let g:easytags_resolve_links = 1  " resolve symbolic links with pathnames
  let g:easytags_python_enabled = 1 " use Python script for dynamic syntax highlighting (is faster)</pre>


## [fuf](https://github.com/vim-scripts/FuzzyFinder)
Fuzzy matching to find files recursively in the current directory.

- `<C-l>` - opens in a new tab page
- `<C-j>` - opens in a horizontal split
- `<C-k>` - opens in a vertical-split window.


## [IndexSearch](https://github.com/vim-scripts/IndexedSearch)
Redefines the search `(/,?)` and creates custom messages about how many hits there are.


## [git-gutter](https://github.com/akiomik/git-gutter-vim)
Shows git diff in Vim's gutter.


## [gundo](http://sjl.bitbucket.org/gundo.vim)
Graph the changes of your file saves in different a nice tree.

- `k` ... move one step top
- `j` ... move one step below
- `gg` ... move to the button
- `G` ... move to the top
- `Enter or double click` ... revert the changes of the file to the current file
- `p` ... will open a preview to show the differences from the selected and the current version
  (just imagine a `git diff`)
<pre>
  let g:gundo_width           = 45 " horizontal width
  let g:gundo_preview_height  = 15 " vertical height
  let g:gundo_help            = 1  " show the help in gundo window
  let g:gundo_close_on_revert = 0  " don't close gundo after a version is selected
  let g:gundo_right           = 0  " display gundo on the left site

  nnoremap <F3> :GundoToggle<CR></pre>


## [Gist.vim](https://github.com/mattn/gist-vim)
upload files directly as gists to GitHub.

- first setup your git credentials `let g:github_user = 'your-name'` and `let g:github*token = 'token'`  in your *.vimrc*
  - the API Token can be found under Account Settings under Account Admin on [github](https://github.com)
  - `:Gist` ... post whole text to gist
  - `:Gist XXXXX` ... get gist XXXXX
  - `:Gist -l` ... list all my gist
  - `:Gist -d` ... delete the gist
  - custom settings:
<pre>
    let g:gist_detect_filetype         = 1 " detecting file type for each gist
    let g:gist_open_browser_after_post = 1 " open the gist after each post
    if has("mac")
      let g:gist_clip_command = 'pbcopy'
    elseif has("unix")
      let g:gist_clip_command = 'xclip -selection clipboard'
    endif</pre>


## [hammer](https://github.com/matthias-guenther/hammer.vim)
Displays various markups (markdown, textile, rdoc, asciidoc) with one keystroke in the browser.


## [html5-syntax](https://github.com/othree/html5-syntax.vim)
HTML5 elements syntax highlighing.
## [json](https://github.com/vim-scripts/JSON.vim)
JSON detection and syntax-highlighting.


## [jQuery](https://github.com/vim-scripts/jQuery "jQuery")
Pretty colors for the jQuery syntax.


## [lightline](https://github.com/itchyny/lightline.vim)
Awesome way to create a custom status line.


## [l9](https://github.com/vim-scripts/L9.git)
Vim-script library, add functionality to program vim-files (used by vim-autocomplpop plugin).


## [matchit](http://www.vim.org/scripts/script.php?script_id=39)
Press `%` to match tags in HTML, LaTeX and several other file formats.


## [minibufexpl](https://github.com/fholgado/minibufexpl.vim)
Highlighting the current active buffer in an extra window.

- `:MiniBufExplorer` ... opens the Minibuffer window
  - `:CMiniBufExplorer` ... close the Minibuffer window
  - `:TMiniBufExplorer` ... toggle Minibuffer window
  - custom settings
<pre>
    " open the Minibufer and go into the window
    noremap <Leader>b :MiniBufExplorer<cr>
    let g:miniBufExplCloseOnSelect = 1 " close MBE if I have selected a buffer
    " use <C-TAB> and <C-S-TAB> to mappings that will move to the next and previous buffer
    let g:miniBufExplMapCTabSwitchWindows = 1
    let g:miniBufExplorerMoreThanOne=10 " Minibufexplorer will shows op, when 10 buffers are open</pre>


## [MRU](https://github.com/vim-scripts/mru.vim)
Opens a quickfix windows which shows the last opens files.

- `:MRU` ... opens the window


## [neobundle](https://github.com/Shougo/neobundle.vim)
Package manager for Vim.

- `:NeoBundleInstall` ... installs all the specified
- `:NeoBundleClean` ... will remove all not used bundles
- `:NeoBundleUpdate <name>` ... will update the specified bundles
- `:NeoBundleDocs` ... create docs for all
- `:NeoBundleCheck` ... if certain plugins are not installed, it will run `:NeoBundleInstall` and will execute `:NeoBundleDocs` to create helptags


## [netrw](http://www.vim.org/scripts/script.php?script_id=1075)
Build in file browser.

- `:edit .` ... take the current directory and open the file explorer
- `:split .` ... vertical split at current working directory
- `:vsplit .` ... horizontal split at current working directory
- `:Explore .` ... open the directory relative to the current file
- `:Sexplore ` ... horizontal split the current file in a new window
- `:Vexplore ` ... vertical split the current file in a new window
- inside the netrw window
  - `v` ... vertical split of file in a new window
  - `p` ... preview the selected file and staying in the tree-browser
  - `P` ... preview the selected file in a big view and minimze the tree-browser to a minimum
  - `r` ... reverse order of the file listings
  - `<C-l>` ... refresh the view
- file creation:
  - `%` ... creates a new file
  - `D` ... delete directory/file
  - `d` ... create a directory
  - `R` ... rename directory/file
<pre>
    " :Explore display style
    let g:netrw_liststyle=1

    " Hit enter in the file browser to open the selected
    " file with :vsplit to the right of the browser.
    let g:netrw_browse_split = 4
    let g:netrw_altv = 1</pre>


## [powerline](https://github.com/Lokaltog/vim-powerline "powerline")
Candy statusline which is high configurable.


## [rubyrefactoring](https://github.com/ecomba/vim-ruby-refactoring)
Refactoring for ruby.

- `,rap`: Refactor Add Parameter ... adds a parameter to a function (cursor must be somewhere in the function)
- `,rec`: Refactor Extract Constant ... mark a number in visual mode and the one will be moved on the top of a class
  or module
- `,relv`: Refactor Extract Local Variable ... if you have a longer if statement and wants to export some expression
  into a tmp
  variable, you can use any selection you want
- `,rrlv`: Refactor Rename Local Variable ... mark the name you want to change and the scope within the method
- `,rriv`: Refactor Rename Instance Variable ... mark the instance variable within a class


## [session](https://github.com/xolox/vim-session)
Save session and to open then later.

- `:SaveSession <name>` ... save the current session under the specified name
- `:OpenSession` ... dialog to select the section you want to open
  - `:OpenSession <name>` ... takes an existing session as input (use tab completion!)
- `:CloseSession` ... will close the whole session from the actual tab/window and will ask to overwrite the loaded session
- `:DeleteSession` ... choose the session you want to delete
- `:ViewSession` ... information about the loaded session (shows Vim internals - good for debugging)
- custom settings:
<pre>
  let g:session_autosave = 'no' " disable automatic saving when quitting a session
  let g:session_autoload = 'no' " disable asking to load the previous session</pre>


## [snipmate](https://github.com/msanders/snipmate.vim)
Define your own snippets for different languages.


## [speedating](https://github.com/tpope/vim-speeddating)
Fast way to increment all kind of numbers.

- `<C-a>` ... ++ number
- `<C-x>` ... -- number
- `:SpeedDatingFormat` ... shows the regular expression of possible formations
- `:SpeedDatingFormat {}` ... here you can specify the format which can be used to be recognized by the program
## [supertab](https://github.com/ervandew/supertab)
Word auto completion with pressing the tab key.

- custom settings:
<pre>
  let g:SuperTabDefaultCompletionType = "<C-n>"
  let g:SuperTabLongestHighlight      = 1</pre>


## [switch](https://github.com/AndrewRadev/switch.vim)
Switch segments of text with predefined definitions - good for changing values in tests.

- `:Switch` ... step on the predicate you want to change
## [tabular](https://github.com/godlygeek/tabular):
Auto indent files according to the pattern
  - `:Tabularize / {pattern}`


## [tagbar](http://majutsushi.github.com/tagbar)
Display the structure of the code.

- `:TagbarOpen` ... open view tagbar
- `:TagbarToggle` ... opens or close the tagbar whether it was closed or open
- `:TagbarOpenAutoClose` ... opens the tagbar and close it after a tag was selected
- `s` ... search for specified regex
- `q` ... quit yankring window
- custom settings:
<pre>
  let g:tagbar_compact = 1 " don't show the help in the tagbar
  nnoremap <silent> <F3> :TagbarToggle<CR></pre>


## [unite-help](https://github.com/tsukkee/unite-help)
Opens unite window for searching.

- `:Unite help` ... will open the menue where you have autocompletion for all the tags


## [unite-tag](https://github.com/tsukkee/unite-tag)
Selecting and searching tags.

- `:Unite tag` ... search name for all tags
- `:Unite tag/file` ... select files including tags


## [tmux.vim](https://github.com/zaiste/tmux.vim)
Syntax detection for tmux files and highlighting.


## [vim-autocomplete](https://github.com/vim-scripts/AutoComplPop)
Automatically opens popup menu for completion when entering characters.

- `:AcpEnable` ... enable auto-popup
- `:AcpDisable` ... disable auto-popup


## [vim-choosewin](https://github.com/t9md/vim-choosewin)
Cycle around in Vim panes the tmux style.

- `-` ... will call the choose-pane dialog
- custom settings:
<pre>
  " invoke with '-'
  nmap - <Plug>(choosewin)

  " Use overlay feature
  let g:choosewin_overlay_enable = 1

  " Workaround for overlay font broken on mutibyte buffer.
  let g:choosewin_overlay_clear_multibyte = 1

  " tmux like overlay color
  let g:choosewin_color_overlay = {
  \ 'gui': ['DodgerBlue3', 'DodgerBlue3' ],
  \ 'cterm': [ 25, 25 ]
  \ }
  let g:choosewin_color_overlay_current = {
  \ 'gui': ['firebrick1', 'firebrick1' ],
  \ 'cterm': [ 124, 124 ]
  \ }

  " No blinking when window was chose
  let g:choosewin_blink_on_land = 0
  " Don't display char in statusline
  let g:choosewin_statusline_replace = 0</pre>


## [vim-css3 syntax](https://github.com/hail2u/vim-css3-syntax)
Add syntax support for css3.


## [vim-exchange](https://github.com/tommcdo/vim-exchange)
Text exchange operator which can be combined with any motions.

- `cx{motion}` ... cx is the operator
- example: `cxiw` marks the word, pressing `.` will repeat the last command and exchange the word


## [vim-interestingwords](https://github.com/vasconcelloslf/vim-interestingwords)
Highlight all occurences of the word under the cursor. hello
hello

- `,k` ... highlight/unhighlight the the word under cursor
- `,K` ... clear all highlights
- settings:
<pre>let g:interestingWordsTermColors = ['154', '121', '211', '137', '214', '222']
let g:interestingWordsRandomiseColors = 1</pre>


## [vim-nerdtree-tabs](https://github.com/jistr/vim-nerdtree-tabs "vim-nerdtree-tabs")
Opens one NERDTree which is the same in every tab.

- own settings:
  - `map t \<plug\>NERDTreeTabsToggle\<CR\>`  - press t to toggle the NERDTree
  - `let g:nerdtree\_tabs\_open\_on\_gui\_startup = 1` - open NERDTree on gvim/MacVim startup
  - `let g:nerdtree\_tabs\_open\_on\_console\_startup = 0` - don't openNERDTree on vi
  - `let g:nerdtree\_tabs\_autoclose = 1` - close current tab if there is only the NERDTree left - nice


## [vim-puppet](https://github.com/rodjek/vim-puppet)
Syntax file for puppet files.


## [vim-less](https://github.com/groenewege/vim-less "vim-less")
Syntax highlighting, indenting and auto completion for the dynamic style sheet language.


## [vim-sneak](https://github.com/justinmk/vim-sneak)
Motion plugin to reach certain pieces of the text in no time.

- `s{char}{char}` ... and you can reach the piece of text you want (forward, and `S` for backward search)

## [vim-bundler](https://github.com/tpope/vim-bundler)
Wrapper for bundler in Vim.

- `:Bundle` ... wraps bundle after, e.g. `:Bundle install`
- `:Bopen` ... opens the Gemfile for editing


## [vim-rails](http://github.com/tpope/vim-rails)
Rails support in Vim.

- `:RDoc` ... browse the rails api
- `:Rrefresh` ... clear some cache settings in Rails
- `:Rlog` ... splits the actual window and opens the log-file
- `:Rpreview [{path}]` ... opens the url `http://localhost:3000/path` for the specified path
- `:Rscript` ... opens the rails console in a beautiful quickfix window
- `gf` ... will open models, views, controllers, partials and so on under which the cursor stands
    - `belongs_to :projects` ... and if the cursor is below `:project` it will open the model `Project`
- jump to certain files according to the actual file:
  - each command will open the finding in the actual window, you can modify each command with
    `V` (vertical split), `S` (horizontal split) `T` (tab), for example `:RVview`, `:RSview` or
    `:RTview`  and so on
  - `:Rcontroller` ... opens the controller
  - `:Rfixtures` ... opens the fixture file (instead of using fixtures I suggest using
    [factory girl](https://github.com/thoughtbot/factory*girl "factory girl"))
  - `:Rhelper` ... opens the helper file
  - `:Rmodel` ... opens the model file
  - `:Rspec` ... open the spec file
  - `:Rview` ... opens the view file
- extracting code from the view and insert it into partials
    - `:2,3Rextract post` will extract lines 2,3 in the partial with the name `post`
    - you didn't need to specify the lines, it is possible to use visual mode: `:'<,'>Rextract
      juhu`, so the content will be inserted in the partial `juhu`


## [vim-haml](https://github.com/tpope/vim-haml)
File detection and syntax highlighting.


## [vim-latex](https://github.com/jcf/vim-latex)
LaTeX suite for Vim.

<pre>
  set grepprg=grep\ -nH\ $* " grep works with LaTeX-Suite
  " auto load dvi after each save in Vim (it runs the latex suite)
  augroup latexgroup
    au!
    au BufWritePost *.tex silent call Tex_CompileLatex()
    au BufWritePost *.tex silent !pkill -USR1 xdvi.bin
  augroup END

  "settings for determining tex file type
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
    " here is the forward search
      let g:Tex_ViewRule_dvi = 'xdvi -editor "vim --servername xdvi --remote +\%l \%f" $* &'
      let g:Tex_ViewRuleComplete_dvi = 'xdvi -editor "vim --servername xdiv --remote +\%l \%f" $* &'
      map ,lj :execute '!cd ' . expand(Tex_GetMainFileName(':p:h')) . ' && xdvi -editor "vim --servername 'v:servername' --remote-wait +\%l \%f" -sourceposition ' . line(".") . substitute(expand('%:p'),expand(Tex_GetMainFileName(':p:h')).'\/','','') . " " . expand(Tex_GetMainFileName(':p:r')) . ".dvi &" <CR><CR>
  endif</pre>
- custom notes
  - `,ll` ... compile the actual document (normally in dvi format)
  - `,lv` ... opens the compiled .dvi file with xdvi
  - `,lj` ... opens the compiled .dvi file just in the place where your cursor is the tex document you are compiling
  - `Ctrl+Shift...j` ... jumps to the placeholder in the document
  - `working with multiple files`
    - create a empty file with the name `<yourmain>.tex`
    - after that you can normally compile every included other tex document (if you are splitting up your tex project)
  - `forward search` (the shortcut for this is `,lv` ... the rest is the theoretical explanation of
   it)
    - compile your tex-document normally
    - start the `\ls` mode
    - where the cursor is, this place will be displayed in the .dvi file
  - `inverse (reverse) search`
    - `<C-Left>` left mouse click in the .dvi file this location will be opend in the source file


## [vim-markdown](https://github.com/tpope/vim-markdown)
Markdown-syntax highlighting.


## [vim-shell](https://github.com/xolox/vim-shell)
Open files and web pages in associated programs out of Vim.


## [vim-signify](https://github.com/mhinz/vim-signify)
Indicates added, removed, or modified lines of files which are under version control.

- **mappings**
  - `<leader>gj` ... go to the next hunk
  - `<leader>gk` ... go to the previous hunk
  - `<leader>gh` ... toggle highlight of the current line
- options:
  - `let g:signify_vcs_list = [ 'git', 'svn' ]` " only run those checkers


## [vimroom](https://github.com/mikewest/vimroom/)
Distraction free writing.

- `:VimroomToggle` ... enables/disable the mode


## [vspec](https://github.com/kana/vim-vspec)
Testing framework for Vimscript.


## [vis](https://github.com/vim-scripts/vis)
Execute commands only in the selected section of visual mode.

- mark a text in visual mode, then press `:B` and then you can perform any command
- example: replace all `\-` through `...` => `:'<','>':B s/-/.../`


## [vim-slime](https://github.com/jpalardy/vim-slime)
Send text to a screen/tmux session.

- `<C>cc` ... put the curent paragraph in the predefined window (`vip`)
- `<C>cv` ... will ask after the target pane again
- `:<range>SlimeSend` ... which lines should be send to the target
- define slime's target:
  - `:` ... current window or current pane
  - `:a` ... the `a`th window in the current pane
  - `:a.b` ... the `b`th pane in window `a`
  - `c:a.b` ... in the tmux session with the name `c` the `b`th pane in window `a`
- options:
<pre>
  let g:slime_target = "tmux"
  let g:slime_paste_file = tempname()</pre>


## [vimux](https://github.com/benmills/vimux)
Easily interact with tmux from Vim.

- `:call VimuxRunCommand("ls")` ... open a split pane without losing focus of Vim
- `:VimuxRunLastCommand` ... runs the last command
- `:VimuxClosePanes` ... close all other tmux panes in the current window


## [vundle](https://github.com/gmarik/vundle)
Plugin manager for Vim.

- `:BundleInstall` ... opens a extra window and show the files that will be installed
- `:BundleInstall!` ... installs or updates installed bundles
- `:BundleSearch <foo>` ... opens a window to display the matches in an extra window
- `:BundleClean` ... confirms removal of unused script-dirs from `.vim/bundle/`.


## [yankring](https://github.com/vim-scripts/YankRing.vim)
Better register management and saves up to 100 buffered lines.

- `:YRShow` ... shows the actual buffer (you can use visual buttons to select more)
- `:YRClear` ... deletes the buffer
- `:YRSearch` ... type in a word or regular expression to search the yankring after it
- `j`, `k` for navigation and <Enter> chose your entry

