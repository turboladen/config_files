"------------------------------------------------------------------------------
" nerdtree
"------------------------------------------------------------------------------
if exists(":NERDTreeFind")
  map <silent> <F2> :NERDTreeToggle<CR>
  map <silent> <F3> :NERDTreeFind<CR>
  " let g:NERDTreeMapActivateNode="<F3>"
  " let g:NERDTreeMapPreview="<F4>"
endif
