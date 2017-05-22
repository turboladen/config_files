"###############################################################################
"
" This file contains all of my own non-plugin-specific functions.
"
"###############################################################################

function! turboladen#FindRspecIts(direction)
  if a:direction == 'forward'
    let a:direction_flag = ''
  elseif a:direction == 'backward'
    let a:direction_flag = 'b'
  endif

  let flags = a:direction_flag . 'ws'

  let [lnum, col] = searchpos("\^(it \\|before\\|after\)", flags)

  echom 'Found line ' . lnum . ' and col ' . col

  if lnum == 0 && col == 0
    return
  else
    call cursor(lnum, col)
  endif
endfunction

function! turboladen#FindRubyMethod(direction)
  if a:direction == 'forward'
    let a:direction_flag = ''
  elseif a:direction == 'backward'
    let a:direction_flag = 'b'
  endif

  let flags = a:direction_flag . 'ws'

  let [lnum, col] = searchpos('\<def\>', flags)

  echom 'Found line ' . lnum . ' and col ' . col

  if lnum == 0 && col == 0
    return
  else
    call cursor(lnum, col)
  endif
endfunction

function! turboladen#LightLineModified()
  if &filetype == "help"
    return ""
  elseif &modified
    return "✹"
  elseif &modifiable
    return ""
  else
    return ""
  endif
endfunction

function! turboladen#LightLineReadonly()
  if &filetype == "help"
    return ""
  elseif &readonly
    return ""
  else
    return ""
  endif
endfunction

function! turboladen#LightLineFilename()
  return ('' != turboladen#LightLineReadonly() ? turboladen#LightLineReadonly() . ' ' : '') .
        \ (&ft == 'unite' ? unite#get_status_string() :
        \ '' != expand('%:p:.') ? expand('%:p:.') : '[No Name]') .
        \ ('' != turboladen#LightLineModified() ? ' ' . turboladen#LightLineModified() : '')
endfunction

function! turboladen#LightLineFugitive()
  return exists('*fugitive#head') ? ' ' . fugitive#head() : ''
endfunction

function! turboladen#LightLineFileformat()
  return winwidth(0) > 70 ? &fileformat : ''
endfunction

function! turboladen#LightLineFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype : 'no ft') : ''
endfunction

function! turboladen#LightLineFileencoding()
  return winwidth(0) > 70 ? (strlen(&fenc) ? &fenc : &enc) : ''
endfunction

function! turboladen#LightLineMode()
  return winwidth(0) > 60 ? lightline#mode() : ''
endfunction

function! turboladen#RubyMethodFold(line)
  let stack = synstack(a:line, (match(getline(a:line), '^\s*\zs'))+1)

  for synid in stack
    if GetSynString(GetSynDict(synid)) ==? "rubyMethodBlock" || GetSynString(GetSynDict(synid)) ==? "rubyDefine" || GetSynString(GetSynDict(synid)) ==? "rubyDocumentation"
      return 1
    endif
  endfor

  return 0
endfunction

" Allows running a normal-mode command, but keeps your cursor in the same spot
" the command was run from.
function! turboladen#KeepJumps(command)
  let winview = winsaveview()
  execute "keepjumps normal! " . a:command
  call winrestview(winview)
endfunction

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
  if filereadable("bin/rspec")
    return "bin/rspec "
  else
    return "bundle exec rspec "
  endif
endfunction

function! turboladen#RSpecVimCommand()
  let cmd = turboladen#RSpecShellCommand()

  " Use vim-dispatch to run tests in a tmux window
  return 'Dispatch ' . cmd . ' {spec}'
endfunction

function! turboladen#SetUpTurboladenDocs()
  !cp '/Users/sloveless/Development/projects/config_files/vim/doc/turboladen.txt' '/Users/sloveless/.vim/doc/turboladen.txt'
  " :helptags l:vim_doc_dir
  :helptags /Users/sloveless/.vim/doc
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
  endif
  :Dispatch ctags .
endfunction

function! turboladen#UpdateRipperTags()
  :!ripper-tags -R .

  if exists(":NeoCompleteEnable")
    :NeoCompleteTagMakeCache
  endif
endfunction
