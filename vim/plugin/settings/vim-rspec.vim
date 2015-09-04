"------------------------------------------------------------------------------
" thoughtbot/vim-rspec
"------------------------------------------------------------------------------

""
" Returns the RSpec command to run based on your environment.
function! RSpecShellCommand()
  if filereadable("bin/spring")
    return 'bin/spring rspec '
  elseif filereadable("bin/rspec")
    return 'bin/rspec '
  else
    return 'bundle exec rspec '
  endif
endfunction

let g:rspec_runner = "os_x_iterm"
" let g:rspec_command = 'call Send_to_Tmux("rspec {spec}\n")'
" Use vim-dispatch to run tests in a tmux window
let g:rspec_command = 'Dispatch ' . RSpecShellCommand() . ' {spec}'
