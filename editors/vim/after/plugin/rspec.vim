"------------------------------------------------------------------------------der>t :call RunCurrentSpecFile()<CR>
" thoughtbot/vim-rspec
"------------------------------------------------------------------------------
function! RSpecShellCommand()
  if filereadable("bin/spring")
    return 'bin/spring '
  elseif filereadable("bin/rspec")
    return 'bin/rspec '
  else
    return 'bundle exec '
  endif
endfunction

let g:rspec_runner = "os_x_iterm"
" let g:rspec_command = 'call Send_to_Tmux("rspec {spec}\n")'
" Use vim-dispatch to run tests in a tmux window
let g:rspec_command = 'Dispatch ' . RSpecShellCommand() . 'rspec {spec}'

map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>
