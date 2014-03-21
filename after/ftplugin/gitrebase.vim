" toogle through different rebase actions by pressing <Enter>
" reference: http://bloerg.net/2013/12/04/a-tiny-vim-plugin-for-interactive-git-rebasing.html

function RebaseActionToggle()
    let line = getline(".")
    let result = matchstr(line, "^\\a")
    let transitions = {'p': 'squash', 's': 'edit', 'e': 'fixup', 'f': 'pick'}
    execute "normal! ^cw" . transitions[result]
endfunction

noremap <Cr> :call RebaseActionToggle()<Cr>
