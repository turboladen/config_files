"-----------------------------------------------------------------------------
" Ruby settings
" 
" For some reason, vim-ruby doesn't set these up
"-----------------------------------------------------------------------------
set expandtab
set softtabstop=2
set shiftwidth=2
set tabstop=2

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
