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
