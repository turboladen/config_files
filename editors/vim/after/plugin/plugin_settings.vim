"------------------------------------------------------------------------------
" vim-airline
"------------------------------------------------------------------------------
let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#left_sep = ' '
" let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_them='badwolf'

"------------------------------------------------------------------------------
" syntastic
"------------------------------------------------------------------------------
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_ruby_checkers = ['mri', 'rubocop']
let g:syntastic_aggregate_errors = 1

"------------------------------------------------------------------------------
" ctrlp
"------------------------------------------------------------------------------
let g:ctrlp_cmd = 'CtrlPMRU'        " Default to MRU find
hi def link CtrlPMatch CursorLine
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git\|node_modules\|bin\|\.hg\|\.svn\|build\|log\|resources\|coverage\|doc\|tmp\|public/assets\|vendor\|Android',
  \ 'file': '\.jpg$\|\.exe$\|\.so$\|tags$\|\.dll$'
  \ }

"------------------------------------------------------------------------------
" ctrlp-funky
"------------------------------------------------------------------------------
nnoremap <Leader>fu :CtrlPFunky<Cr>
nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>

"------------------------------------------------------------------------------
" tagbar
"------------------------------------------------------------------------------
nmap <F8> :TagbarToggle<CR>

"------------------------------------------------------------------------------
" vim-tags
"------------------------------------------------------------------------------
" let g:vim_tags_auto_generate=1
" let g:vim_tags_use_vim_dispatch=1
map <Leader>ct :!ctags -R --exclude=.git --exclude=logs --exclude=doc .<CR>

"------------------------------------------------------------------------------
" vim-javascript-syntax
"------------------------------------------------------------------------------
au FileType javascript call JavaScriptFold()

"------------------------------------------------------------------------------
" vim-markdown
"------------------------------------------------------------------------------
let g:vim_markdown_folding_disabled=1

"------------------------------------------------------------------------------
" mileszs/ack.vim
" https://github.com/carlhuda/janus/blob/0e34a62fac3a38ccc459bf3a6dab6ef1ec6dc9a5/janus/vim/tools/janus/after/plugin/ack.vim
"------------------------------------------------------------------------------
if has("gui_macvim") && has("gui_running")
  " Command-Shift-F on OSX
  map <D-F> :Ack<space>
else
  " Define <C-F> to a dummy value to see if it would set <C-f> as well.
  map <C-F> :dummy

  if maparg("<C-f>") == ":dummy"
    " <leader>f on systems where <C-f> == <C-F>
    map <Leader>f :Ack<space>
  else
    " <C-F> if we can still map <C-f> to <S-Down>
    map <C-F>f :Ack<space>
  endif

  map <C-f> <S-Down>
endif


"------------------------------------------------------------------------------
" unite
"------------------------------------------------------------------------------
" Mimic CtrlP
nnoremap <C-p> :Unite file_rec/async<CR>
call unite#filters#matcher_default#use(['matcher_fuzzy'])
call unite#filters#sorter_default#use(['sorter_rank'])

" Ack
nnoremap <space>/ :Unite grep:.<CR>

" yankring/yankstack
let g:unite_source_history_yank_enable = 1
nnoremap <space>y :Unite history/yank<CR>

" LustyJuggler
nnoremap <space>s :Unite -quick-match buffer<CR>
