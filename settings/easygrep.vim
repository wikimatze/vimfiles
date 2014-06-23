let g:EasyGrepAllOptionsInExplorer=0 " don't show advanced greping options
let g:EasyGrepFilesToExclude="tags"  " not usable if I use ag for searching
let g:EasyGrepInvertWholeWord=0      " <Leader>vv matches word, and <Leader>vV matches whole word

let g:EasyGrepReplaceWindowMode=2      " autowriteall all changes during a search and replace session
let g:EasyGrepOptionPrefix='<leader>e' " shortcut to turn on and off certain grepoptions
let g:EasyGrepRecursive=1              " turn on recurse option for replacement
let g:EasyGrepCommand=1                " using system 'grepprg' instead of 'vimgrep

