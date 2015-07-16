"-----------------------------------------------------------------------------
" Keymappings that don't depend on plugins
"-----------------------------------------------------------------------------

" Basic options are set in ~/.ctags
map <Leader>ct :!ctags .<CR>

if !exists(":Ag")
  " bind K to grep word under cursor
  nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
endif
