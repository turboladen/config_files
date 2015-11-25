"-----------------------------------------------------------------------------
" Ruby settings
"-----------------------------------------------------------------------------
"-----------------------------------------------------------------------------
" Set up folding.
"-----------------------------------------------------------------------------
function! RubyMethodFold(line)
  let stack = synstack(a:line, (match(getline(a:line), '^\s*\zs'))+1)

  for synid in stack
    if GetSynString(GetSynDict(synid)) ==? "rubyMethodBlock" || GetSynString(GetSynDict(synid)) ==? "rubyDefine" || GetSynString(GetSynDict(synid)) ==? "rubyDocumentation"
      return 1
    endif
  endfor

  return 0
endfunction

set foldexpr=RubyMethodFold(v:lnum)
set foldmethod=expr
let ruby_fold=1

autocmd FileType ruby,eruby setlocal omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_include_object = 1
autocmd FileType ruby,eruby let g:rubycomplete_include_objectspace = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
