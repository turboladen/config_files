"------------------------------------------------------------------------------
" ag.vim
" https://robots.thoughtbot.com/faster-grepping-in-vim
"------------------------------------------------------------------------------
" The Silver Searcher
if exists(":Ag")
  " let g:ag_prg="ag --context --vimgrep --only-matching --silent"
  " let g:ag_prg="ag --vimgrep --only-matching --silent"

  let g:ag_highlight=1          " highlight term after search
  let g:ag_working_path_mode="r"

  " Use ag over grep
  " set grepprg="ag --nogroup --nocolor"
  set grepprg=ag\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects
  " .gitignore
  if exists(":CtrlP")
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
    " let g:ctrlp_user_command = 'ag %s -l -g ""'

    " ag is fast enough that CtrlP doesn't need to cache
    let g:ctrlp_use_caching = 0
  endif
endif
