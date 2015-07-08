"------------------------------------------------------------------------------
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

" Builds a the RSpec command for running the test on your current line, then
" echos it and copies it to the system clipboard. Useful for when wanting to
" run the same test in a different terminal.
function! RSpecCommandForManualRunning()
  let currentLine = line(".")
  let command = RSpecShellCommand() . 'rspec ' . expand('%') . ':' . currentLine

  " Copy to system clipboard
  let @+ = command
  echo command
endfunction

map <Leader>c :call RSpecCommandForManualRunning()<CR>
