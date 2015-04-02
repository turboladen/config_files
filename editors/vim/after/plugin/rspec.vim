"------------------------------------------------------------------------------der>t :call RunCurrentSpecFile()<CR>
" thoughtbot/vim-rspec
"------------------------------------------------------------------------------
let g:rspec_runner = "os_x_iterm"
" Use vim-dispatch to run tests in a tmux window
let g:rspec_command = "Dispatch bundle exec rspec {spec}"
" let g:rspec_command = 'call Send_to_Tmux("rspec {spec}\n")'


map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>
