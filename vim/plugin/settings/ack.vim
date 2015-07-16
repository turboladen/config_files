"------------------------------------------------------------------------------
" mileszs/ack.vim
" https://github.com/carlhuda/janus/blob/0e34a62fac3a38ccc459bf3a6dab6ef1ec6dc9a5/janus/vim/tools/janus/after/plugin/ack.vim
"------------------------------------------------------------------------------
if exists(":Ack")
  if executable('ag')
    let g:ackprg = "ag --vimgrep"
  endif

  map <Leader>/ :Ack<space>
endif

