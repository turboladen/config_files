"###############################################################################
"
" This file contains all of my own non-plugin-specific functions.
"
"###############################################################################

function! turboladen#FindRspecIts(direction) abort
  if a:direction ==# 'forward'
    let a:direction_flag = ''
  elseif a:direction ==# 'backward'
    let a:direction_flag = 'b'
  endif

  let l:flags = a:direction_flag . 'ws'

  let [l:lnum, l:col] = searchpos("\^(it \\|before\\|after\)", l:flags)

  echom 'Found line ' . l:lnum . ' and col ' . l:col

  if l:lnum == 0 && l:col == 0
    return
  else
    call cursor(l:lnum, l:col)
  endif
endfunction

function! turboladen#FindRubyMethod(direction) abort
  if a:direction ==# 'forward'
    let a:direction_flag = ''
  elseif a:direction ==# 'backward'
    let a:direction_flag = 'b'
  endif

  let l:flags = a:direction_flag . 'ws'

  let [l:lnum, l:col] = searchpos('\<def\>', l:flags)

  echom 'Found line ' . l:lnum . ' and col ' . l:col

  if l:lnum == 0 && l:col == 0
    return
  else
    call cursor(l:lnum, l:col)
  endif
endfunction

function! turboladen#LightLineModified() abort
  if &filetype ==# 'help'
    return ''
  elseif &modified
    return '✹'
  elseif &modifiable
    return ''
  else
    return ''
  endif
endfunction

function! turboladen#LightLineReadonly() abort
  if &filetype ==# 'help'
    return ''
  elseif &readonly
    return ''
  else
    return ''
  endif
endfunction

function! turboladen#LightLineFilename() abort
  return ('' !=# turboladen#LightLineReadonly() ? turboladen#LightLineReadonly() . ' ' : '') .
        \ (&filetype ==# 'unite' ? unite#get_status_string() :
        \ '' !=# expand('%:p:.') ? expand('%:p:.') : '[No Name]') .
        \ ('' !=# turboladen#LightLineModified() ? ' ' . turboladen#LightLineModified() : '')
endfunction

function! turboladen#LightLineFugitive() abort
  return exists('*fugitive#head') ? ' ' . fugitive#head() : ''
endfunction

function! turboladen#LightLineFileformat() abort
  return winwidth(0) > 70 ? &fileformat : ''
endfunction

function! turboladen#LightLineFiletype() abort
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype : 'no ft') : ''
endfunction

function! turboladen#LightLineFileencoding() abort
  return winwidth(0) > 70 ? (strlen(&fileencoding) ? &fileencoding : &encoding) : ''
endfunction

function! turboladen#LightLineMode() abort
  return winwidth(0) > 60 ? lightline#mode() : ''
endfunction

function! turboladen#RubyMethodFold(line) abort
  let l:stack = synstack(a:line, (match(getline(a:line), '^\s*\zs'))+1)

  for l:synid in l:stack
    if GetSynString(GetSynDict(l:synid)) ==? 'rubyMethodBlock' || GetSynString(GetSynDict(l:synid)) ==? 'rubyDefine' || GetSynString(GetSynDict(l:synid)) ==? 'rubyDocumentation'
      return 1
    endif
  endfor

  return 0
endfunction

" Allows running a normal-mode command, but keeps your cursor in the same spot
" the command was run from.
function! turboladen#KeepJumps(command) abort
  let l:winview = winsaveview()

  execute 'keepjumps normal! ' . a:command
  call winrestview(l:winview)
endfunction

" Builds a the RSpec command for running the test on your current line, then
" echos it and copies it to the system clipboard. Useful for when wanting to
" run the same test in a different terminal.
function! turboladen#RSpecCommandForManualRunning() abort
  set clipboard=unnamed
  let l:currentLine = line('.')
  let l:command = turboladen#RSpecShellCommand() . expand('%') . ':' . l:currentLine

  " Copy to system clipboard
  let @+ = l:command
  echo l:command
endfunction

""
" Returns the RSpec command to run based on your environment.
function! turboladen#RSpecShellCommand() abort
  if filereadable('bin/rspec')
    return 'bin/rspec '
  else
    return 'bundle exec rspec '
  endif
endfunction

function! turboladen#RSpecVimCommand() abort
  let l:cmd = turboladen#RSpecShellCommand()

  " Use vim-dispatch to run tests in a tmux window
  return 'Dispatch ' . l:cmd . ' {spec}'
endfunction

function! turboladen#SetUpTurboladenDocs() abort
  !cp '/Users/sloveless/Development/projects/config_files/vim/doc/turboladen.txt' '/Users/sloveless/.vim/doc/turboladen.txt'
  " :helptags l:vim_doc_dir
  :helptags /Users/sloveless/.vim/doc
endfunction

""
" Clean out the whitespaces from the file.
" function! <SID>turboladen#StripTrailingWhitespaces()
function! turboladen#StripTrailingWhitespaces() abort
  " Preparation: save last search, and cursor position.
  let l:_s=@/
  let l:l = line('.')
  let l:c = col('.')
  " Do the business:
  %s/\s\+$//e
  " Clean up: restore previous search history, and cursor position
  let @/=l:_s
  call cursor(l:l, l:c)
endfunction

""
" Updates ctags for the project directory, then updates Neocomplete's cache.
function! turboladen#UpdateCTags() abort
  :Dispatch ctags .
  echom 'ctag generation complete.'
endfunction

function! turboladen#UpdateRipperTags() abort
  :Dispatch ripper-tags -R .
endfunction

function! turboladen#TabularizeHashArgs() abort
  :Tabularize /\w\+\: .\+$
endfunction
