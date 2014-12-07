let g:TestKey = { 'runners': {} }

let g:TestKey.runners.rspec = { 'match': '_spec.rb$' }
function g:TestKey.runners.rspec.run(file, line)
  return ':!clear && bundle exec rspec '.a:file
endfunction

