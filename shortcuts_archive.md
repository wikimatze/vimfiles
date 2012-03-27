# Archive #

Here is a list of plugins I used in the past and removed them because I found a new method to use
it.


- [NERDTree](https://github.com/scrooloose/nerdtree "NERDTree"): amazing file browser for GUI guys
  - **m** - choose which action to perform (add, move, copy, delete)
      - add / at the end to create a new directory
  - **r** - refresh the view
  - **O** - opens the node recursive from the parent node
  - **t** - opens th file in a new tab
  - **p** - jumps to the root tree
  - **T** - opens the file in a new tab and the focus will stay in the current window
  - **x** - closed the parent node, but leave the nodes above the node open (visual close)
  - **X** - closed all nodes which are under the actual node (physical close)
  - **R** - update the view
  - press **?** in the NERDTree window
  - **:NERDTreeFind** - open the current file in the NERDTree and expand the tree to this file
    location
  - *own settings*:
      - **let g:NERDTreeDirArrows = 1** - use arrows for the tree structure
      - **let g:NERDChristmasTree = 0** - less colorful tree (save performance)
      - **let g:NERDTreeHighlightCursorline = 0** - no cursor highlight in the tree
      - **let g:NERDTreeMouseMode = 3** - one click will open the file
      - **let g:NERDTreeWinPos = 'right'** - display Tree in the right
      - **let g:NERDTreeWinSize = 30** - the width of the NERDTree when it opens
- [vim-nerdtree-tabs](https://github.com/jistr/vim-nerdtree-tabs "vim-nerdtree-tabs"): opens one
  NERDTree which is the same in every tab
  - *own settings*:
      - **map t \<plug\>NERDTreeTabsToggle\<CR\>**  - press t to toggle the NERDTree
      - **let g:nerdtree\_tabs\_open\_on\_gui\_startup = 1** - open NERDTree on gvim/MacVim startup
      - **let g:nerdtree\_tabs\_open\_on\_console\_startup = 0** - don't openNERDTree on vi
      - **let g:nerdtree\_tabs\_autoclose = 1** - close current tab if there is only the NERDTree left - nice
