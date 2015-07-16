"------------------------------------------------------------------------------
" ctrlp-funky
"------------------------------------------------------------------------------
if exists(":CtrlPFunky")
  nnoremap <Leader>fu :CtrlPFunky<Cr>
  nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>
endif
