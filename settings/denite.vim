call denite#custom#map(
      \ 'insert',
      \ '<C-n>',
      \ '<denite:move_to_next_line>',
      \ 'noremap'
      \)
call denite#custom#map(
      \ 'insert',
      \ '<C-p>',
      \ '<denite:move_to_previous_line>',
      \ 'noremap'
      \)

if executable('ag')
  call denite#custom#var('file_rec', 'command', ['ag', '--nogroup', '--nocolor', '--column', '-g', ''])
elseif executable('ack-grep')
  call denite#custom#var('file_rec', 'command', ['ack-grep', '--no-heading', '--no-color', '-H', ''])
endif

