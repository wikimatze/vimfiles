let test#ruby#bundle_exec = 1
let test#strategy = "dispatch"
let test#ruby#minitest#executable = 'bundle exec ruby'

nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>


