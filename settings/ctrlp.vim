let g:ctrlp_working_path_mode     = 2       " the nearest ancestor containing .git, .hg, .svn for searching
" let g:ctrlp_extensions            = ['tag'] " specifiy extensions for further search paths
let g:ctrlp_match_window_bottom   = 1       " show the match window at the bottom
let g:ctrlp_match_window_reversed = 0       " show matching files from top to bottom
let g:ctrlp_working_path_mode     = 'a'     " local start directory is where the .git, .hg, .svn, .bzr is
let g:ctrlp_max_height            = 10      " Specify the height of the match window
let g:ctrlp_max_files             = 0       " scan an unlimited amount of files
let g:ctrlp_dotfiles              = 0       " Don't search for dotfiles and dotdirectories
let g:ctrlp_switch_buffer         = 0       " stay in the current window when opening files
let g:ctrlp_custom_ignore         = {
  \ 'dir':  '\.git$\|\.hg$\|\.svn$\|_site$\|assets$',
  \ 'file': '\.exe$\|\.so$\|\.dll$\|\.DS$\|\.bak$\|\.orig$\|\.swp$\|\.jpg$\|\.JPG$\|\.png$\|\.PNG$'
  \ }


