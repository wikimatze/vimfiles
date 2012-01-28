let g:github_user = 'matthias-guenther'
let g:github_token = 'a919c9c0004f7a3a91004a8b61fb344f'
let g:gist_detect_filetype = 1 " detecting file type for each gist
let g:gist_open_browser_after_post = 1 " open the gist after each post
if has("mac")
  let g:gist_clip_command = 'pbcopy'
elseif has("unix")
  let g:gist_clip_command = 'xclip -selection clipboard'
endif
