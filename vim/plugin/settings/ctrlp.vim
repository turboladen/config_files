"------------------------------------------------------------------------------
" ctrlp
"------------------------------------------------------------------------------
if exists(":CtrlP")
  " let g:ctrlp_cmd = 'CtrlPMRU'        " Default to MRU find
  hi def link CtrlPMatch CursorLine
  let g:ctrlp_custom_ignore = {
        \ 'dir':  '\.git\|node_modules\|bin\|\.hg\|\.svn\|build\|log\|resources\|coverage\|doc\|tmp\|public/assets\|vendor\|Android',
        \ 'file': '\.jpg$\|\.exe$\|\.so$\|tags$\|\.dll$'
        \ }
  " nnoremap <C-p> :CtrlPMRU<CR>
endif
