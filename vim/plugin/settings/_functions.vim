"###############################################################################
"
" This file contains all of my own non-plugin-specific functions.
"
"###############################################################################

""
" Builds a the RSpec command for running the test on your current line, then
" echos it and copies it to the system clipboard. Useful for when wanting to
" run the same test in a different terminal.
function! RSpecCommandForManualRunning()
  " set clipboard=unnamedplus
  set clipboard=unnamed
  let currentLine = line(".")
  let command = RSpecShellCommand() . expand('%') . ':' . currentLine

  " Copy to system clipboard
  let @+ = command
  echo command
endfunction

""
" Updates ctags for the project directory, then updates Neocomplete's cache.
function! UpdateCTags()
  :!ctags .

  if exists(":NeoCompleteEnable")
    :NeoCompleteTagMakeCache
  endif
endfunction
