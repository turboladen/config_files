"-----------------------------------------------------------------------------
" Keymappings that don't depend on plugins. Sorted alphabetically.
"-----------------------------------------------------------------------------
let mapleader = " "

"-----------------------------------------------------------------------------
" Leader commands
"-----------------------------------------------------------------------------

" Close a buffer but don't close the window
map <leader>bc :bprevious<CR>:bdelete #<CR>

" Basic options are set in ~/.ctags
map <Leader>ct :!ctags .<CR>

if !exists(":Ag")
  " bind K to grep word under cursor
  nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
endif

" Disable Ex mode
nnoremap Q <nop>

" Allow for closing all the things
function! CloseAllOtherBuffers()
  let l:current_buffer_number = bufnr('%')
  let l:lower_buffer_min_number = 1
  let l:lower_buffer_max_number = l:current_buffer_number - 1
  let l:upper_buffer_min_number = l:current_buffer_number + 1
  let l:upper_buffer_max_number = 10000
  let l:lower_range = join([l:lower_buffer_min_number, l:lower_buffer_max_number], ',')
  let l:upper_range = join([l:upper_buffer_min_number, l:upper_buffer_max_number], ',')
  let l:cmd =  l:lower_range . 'bd | ' . l:upper_range . 'bd'

  exec(l:cmd)
endfunction

map <Leader>q :call CloseAllOtherBuffers()<CR>

" Reload all the things!
nnoremap <Leader>v :source $MYVIMRC<CR>

" Clean out the whitespaces
function! <SID>StripTrailingWhitespaces()
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

nnoremap <silent> <Leader>w :call <SID>StripTrailingWhitespaces()<CR>

"-----------------------------------------------------------------------------
" Other remappings
"-----------------------------------------------------------------------------
" Save some ring-finger key strokes
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
