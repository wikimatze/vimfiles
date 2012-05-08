# Archive

Here is a list of plugins I used in the past and removed them because I found a new method to use
it.

- [jQuery](https://github.com/vim-scripts/jQuery "jQuery"): pretty colors for the
  jQuery syntax (*no doc*)
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

