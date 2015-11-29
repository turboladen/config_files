"###############################################################################
"
" This file contains all of my own non-plugin-specific functions.
"
"###############################################################################

function! turboladen#RubyMethodFold(line)
  let stack = synstack(a:line, (match(getline(a:line), '^\s*\zs'))+1)

  for synid in stack
    if GetSynString(GetSynDict(synid)) ==? "rubyMethodBlock" || GetSynString(GetSynDict(synid)) ==? "rubyDefine" || GetSynString(GetSynDict(synid)) ==? "rubyDocumentation"
      return 1
    endif
  endfor

  return 0
endfunction

""
" Builds a the RSpec command for running the test on your current line, then
" echos it and copies it to the system clipboard. Useful for when wanting to
" run the same test in a different terminal.
function! turboladen#RSpecCommandForManualRunning()
  " set clipboard=unnamedplus
  set clipboard=unnamed
  let currentLine = line(".")
  let command = turboladen#RSpecShellCommand() . expand('%') . ':' . currentLine

  " Copy to system clipboard
  let @+ = command
  echo command
endfunction

""
" Returns the RSpec command to run based on your environment.
function! turboladen#RSpecShellCommand()
  if filereadable("bin/spring")
    return 'bin/spring rspec '
  elseif filereadable("bin/rspec")
    return 'bin/rspec '
  else
    return 'bundle exec rspec '
  endif
endfunction

""
" Clean out the whitespaces from the file.
" function! <SID>turboladen#StripTrailingWhitespaces()
function! turboladen#StripTrailingWhitespaces()
  " Preparation: save last search, and cursor position.
  let _s=@/
  let l = line(".")
  let c = col(".")
  " Do the business:
  %s/\s\+$//e
  " Clean up: restore previous search history, and cursor position
  let @/=_s
  call cursor(l, c)
endfunction

""
" Updates ctags for the project directory, then updates Neocomplete's cache.
function! turboladen#UpdateCTags()
  :!ctags .

  if exists(":NeoCompleteEnable")
    :NeoCompleteTagMakeCache
  endif
endfunction
