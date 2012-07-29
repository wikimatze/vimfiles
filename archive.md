# Archive

Here is a list of plugins I used in the past and removed them because I found a new method to use
it.


- [colorv](https://github.com/Rykka/ColorV): display Hex Color with real colors in Vim -
  very useful when working with CSS
- [command-t](https://github.com/wincent/Command-T): file search in the
  actual directory
  - `:CommandTFlush` - update the path cache and also include new and deleted files
  - `Installation`: $ ~/.vim/bundle/Command-t; rake make
  - shortcuts:
      - `<C-j>` → go down
      - `<C-k>` → go up
      - `<C-t>` → opens the file in a new tab
      - `<C-s>` → opens the file under the cursor with a *horizontal* split
      - `<C-v>` → opens the file under the cursor with a *vertcial* split
      - `ESC` or `<C-c>` → closing the open dialog
      - `<C-u>` → clean the matching window
      - `<C-ENTER>` → opens the file under the cursor in a new window
  - mappings:
      - `<Leader>t`  → call *:CommandT* command to open a specified file
          - `:CommandT ../path/to/other/files` → search in the specified path
      - `<Leader>b`  → opens the buffer for this files after which were searched in the past
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
- [easymotion](https://github.com/Lokaltog/vim-easymotion): easier and faster use of motions
    - `<leader><leader>w | e | j | ..` → jump to the matching words on the screen
    - `<leader><leader>t | T` → search after the target character forward (`t`) and backward (`T`)
- [Gist.vim](https://github.com/mattn/gist-vim ): upload files directly as gists to github
  - first setup your git credentials `let g:github_user = 'your-name'` and `let g:github*token = 'token'`  in your *.vimrc*
      - the API Token can be found under Account Settings under Account Admin on [github](https://github.com)
  - `:Gist` → post whole text to gist
  - `:Gist XXXXX` → get gist XXXXX
  - `:Gist -l` → list all my gist
  - `:Gist -d` → delete the gist
  - custom settings:
<pre>
      let g:gist_detect_filetype         = 1 " detecting file type for each gist
      let g:gist_open_browser_after_post = 1 " open the gist after each post
      if has("mac")
        let g:gist_clip_command = 'pbcopy'
      elseif has("unix")
        let g:gist_clip_command = 'xclip -selection clipboard'
      endif</pre>
- [jQuery](https://github.com/vim-scripts/jQuery "jQuery"): pretty colors for the
  jQuery syntax (*no doc*)
- [MRU](https://github.com/vim-scripts/mru.vim): opens a quickfix windows which shows the last
  opens files (*no doc*)
  - `:MRU` → opens the window
- [NERDTree](https://github.com/scrooloose/nerdtree "NERDTree"): amazing file browser for GUI guys
  - `m` - choose whi  ch action to perform (add, move, copy, delete)
      - add / at the end to create a new directory
  - `r` - refresh the view
  - `O` - opens the node recursive from the parent node
  - `t` - opens th file in a new tab
  - `p` - jumps to the root tree
  - `T` - opens the file in a new tab and the focus will stay in the current window
  - `x` - closed the parent node, but leave the nodes above the node open (visual close)
  - `X` - closed all nodes which are under the actual node (physical close)
  - `R` - update the view
  - press `?` in the NERDTree window
  - `:NERDTreeFind` - open the current file in the NERDTree and expand the tree to this file
    location
  - own settings:
      - `let g:NERDTreeDirArrows = 1` - u se arrows for the tree structure
      - `let g:NERDChristmasTree = 0` - l ess colorful tree (save performance)
      - `let g:NERDTreeHighlightCursorline = 0** - no cursor highlight in the tree
      - `let g:NERDTreeMouseMode = 3` - o ne click will open the file
      - `let g:NERDTreeWinPos = 'right'`  - display Tree in the right
      - `let g:NERDTreeWinSize = 30` - th e width of the NERDTree when it opens
- [session](https://github.com/xolox/vim-session): save session and to open then later
  - `:SaveSession <name>` → save the current session under the specified name
  - `:OpenSession` → dialog to select the section you want to open
      - `:OpenSession <name>` → takes an existing session as input (use tab completion!)
  - `:CloseSession` → will close the whole session from the actual tab/window and will ask to
    overwrite the loaded session
  - `:DeleteSession` → choose the session you want to delete
  - `:ViewSession` → information about the loaded session (shows Vim internals - good for debugging)
- [vim-nerdtree-tabs](https://github.com/jistr/vim-nerdtree-tabs "vim-nerdtree-tabs"): opens one
  NERDTree which is the same in every tab
  - own settings:
      - `map t \<plug\>NERDTreeTabsToggle\<CR\>`  - press t to toggle the NERDTree
      - `let g:nerdtree\_tabs\_open\_on\_gui\_startup = 1` - open NERDTree on gvim/MacVim startup
      - `let g:nerdtree\_tabs\_open\_on\_console\_startup = 0` - don't openNERDTree on vi
      - `let g:nerdtree\_tabs\_autoclose = 1` - close current tab if there is only the NERDTree left - nice
- [cucumber](https://github.com/tpope/vim-cucumber "cucumber"): syntax-highlighting for cucumber
  files (*no doc*)
- [coffee-script](https://github.com/kchmck/vim-coffee-script "coffe-script"): coffee script support
- [l9](https://github.com/vim-scripts/L9 "l9"): Vim-script library, add functionality to program vim-files
  (mainly needed for fuzzyfinder plugin)
- [powerline](https://github.com/Lokaltog/vim-powerline "powerline"): candy statusline which is high
  configurable
- [vim-less](https://github.com/groenewege/vim-less "vim-less"): syntax highlighting, indenting and
  auto completion for the dynamic style sheet language (*no docu*)
- [vim-bundler](https://github.com/tpope/vim-bundler): wrapper for bundler in Vim
    - `:Bundle` → wraps bundle after, e.g. `:Bundle install`
    - `:Bopen` → opens the Gemfile for editing
- [vim-rails](http://github.com/tpope/vim-rails "vim-rails"): rails support in Vim (with some really
  great features)
  - `:RDoc` - browse the rails api
  - `:Rrefresh` - clear some cache settings in Rails
  - `:Rlog` - splits the actual window and opens the log-file
  - `:Rpreview [{path}]`  - opens the url `http://localhost:3000/path` for the specified path
  - `:Rscript` - opens the rails console in a beautiful quickfix window
  - `gf` - will open models, views, controllers, partials and so on under which the cursor stands
      - `belongs_to :projects` - and if the cursor is below `:project` it will open the model `Project`
  - jump to certain files according to the actual file
      - each command will open the finding in the actual window, you can modify each command with
        `V` (vertical split), `S` (horizontal split) `T` (tab), for example `:RVview`, `:RSview` or
        `:RTview`  and so on
      - `:Rcontroller` - opens the controller
      - `:Rfixtures` - opens the fixture file (instead of using fixtures I suggest using
        [factory girl](https://github.com/thoughtbot/factory*girl "factory girl"))
      - `:Rhelper` - opens the helper file
      - `:Rmodel` - opens the model file
      - `:Rspec` - open the spec file
      - `:Rview` - opens the view file
  - extracting code from the view and insert it into partials
      - `:2,3Rextract post` will extract lines 2,3 in the partial with the name `post`
      - you didn't need to specify the lines, it is possible to use visual mode: `:'<,'>Rextract
        juhu`, so the content will be inserted in the partial `juhu`

