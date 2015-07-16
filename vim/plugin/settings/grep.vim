"------------------------------------------------------------------------------
" Setting for skwp/greplace.vim
"------------------------------------------------------------------------------
if executable('ag')
  " Use ag over grep
  " set grepprg="ag --nogroup --nocolor"
  set grepprg=ag
  let g:grep_cmd_opts = '--line-numbers --noheading'
endif

