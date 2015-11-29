"------------------------------------------------------------------------------
" thoughtbot/vim-rspec
"------------------------------------------------------------------------------

let g:rspec_runner = "os_x_iterm"
" let g:rspec_command = 'call Send_to_Tmux("rspec {spec}\n")'
" Use vim-dispatch to run tests in a tmux window
let g:rspec_command = 'Dispatch ' . turboladen#RSpecShellCommand() . ' {spec}'
