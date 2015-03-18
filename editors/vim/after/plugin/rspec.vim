"------------------------------------------------------------------------------der>t :call RunCurrentSpecFile()<CR>
" thoughtbot/vim-rspec
"------------------------------------------------------------------------------
let g:rspec_runner = "os_x_iterm"
" Use vim-dispatch to run tests in a tmux window
let g:rspec_command = "Dispatch rspec {spec}"
" let g:rspec_command = 'call Send_to_Tmux("rspec {spec}\n")'


map <Leader>rt :call RunCurrentSpecFile()<CR>
map <Leader>rs :call RunNearestSpec()<CR>
map <Leader>rl :call RunLastSpec()<CR>
map <Leader>ra :call RunAllSpecs()<CR>
