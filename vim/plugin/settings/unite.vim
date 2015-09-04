"------------------------------------------------------------------------------
" Shuogo/unite
"------------------------------------------------------------------------------
let g:unite_source_history_yank_enable = 1
call unite#filters#matcher_default#use(['matcher_fuzzy'])
" call unite#filters#sorter_default#use(['sorter_rank'])
let g:unite_source_grep_command='ag'
let g:unite_source_grep_default_opts='--nocolor --line-numbers --nogroup -S -C4 --hidden
      \ --ignore .DS_Store -g ""'
" let g:unite_source_grep_recursive_opt=''

" Mimic Ack
" nnoremap <space>/ :Unite grep:.<CR>

" Mimic yankring/yankstack
" let g:unite_source_history_yank_enable = 1
" nnoremap <space>y :Unite history/yank<CR>

" Mimic LustyJuggler
" nnoremap <space>s :Unite -quick-match buffer<CR>
