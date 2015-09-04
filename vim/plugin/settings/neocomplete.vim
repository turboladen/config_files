"------------------------------------------------------------------------------
" Shougo/neocomplete.vim
"------------------------------------------------------------------------------
" if exists(":NeoCompleteEnable")
  let g:acp_enableAtStartup = 0
  " let g:neocomplete#enable_at_startup = 1   " Moved to ~/.vimrc
  let g:neocomplete#enable_smart_case = 1

  " <TAB>: completion
  inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
  " <C-h>, <BS>: close popup and delete backword char.
  " inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
  " inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
  " inoremap <expr><C-y>  neocomplete#close_popup()
  " inoremap <expr><C-e>  neocomplete#cancel_popup()
" endif
