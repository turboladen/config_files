"###############################################################################
"
" This file contains all keymappings, organized accordingly.
"
"###############################################################################

"-------------------------------------------------------------------------------
" Functions for keymappings
"-------------------------------------------------------------------------------

""
" Clean out the whitespaces from the file.
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

"-------------------------------------------------------------------------------
" Disable mappings
"-------------------------------------------------------------------------------

" Disable Ex mode
nnoremap Q <nop>

"-----------------------------------------------------------------------------
" Keymappings that don't depend on plugins. Sorted alphabetically.
"-----------------------------------------------------------------------------
let mapleader = " "

"------------------------------------------------------------------------------
" Leader commands
"------------------------------------------------------------------------------

"----
" <Leader>[non-alpha]
"----
if exists(":Ack")
  map <Leader>/ :Ack<space>
endif

" bind . (backward slash) to grep shortcut
" command! -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
nnoremap <Leader>. :Ag!<SPACE>

"------------------------------------------------------------------------------
" <Leader>A-G
"------------------------------------------------------------------------------
" thoughtbot/vim-rspec
map <Leader>a :call RunAllSpecs()<CR>

" Close a buffer but don't close the window
map <leader>bc :bprevious<CR>:bdelete #<CR>

" Basic options are set in ~/.ctags
map <Leader>ct :call UpdateCTags()<CR>

" Since I remap <C-l> (default redraw command), add a mapping for that.
nnoremap <Leader>d :redraw!<CR>

" Shougo/unite-outline
nnoremap <Leader>fu :Unite -start-insert outline<Cr>

if exists(":CtrlPFunky")
  nnoremap <Leader>fu :CtrlPFunky<Cr>
  nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>
endif

"------------------------------------------------------------------------------
" <Leader>H-L
"------------------------------------------------------------------------------
" bind K to grep word under cursor
if !exists(":Ag")
  nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
else
  " bind K to grep word under cursor
  nnoremap K :Ag! "\b<C-R><C-W>\b"<CR>
endif
" thoughtbot/vim-rspec
map <Leader>l :call RunLastSpec()<CR>

"------------------------------------------------------------------------------
" <Leader>L-R
"------------------------------------------------------------------------------
" Output the command for manually running RSpec for that line.
map <Leader>m :call RSpecCommandForManualRunning()<CR>

" Do a TODO search
nnoremap <Leader>o :Ag! --ignore=vendor todo<CR>

map <Leader>q :BufOnly<CR>

"------------------------------------------------------------------------------
" <Leader>S-V
"------------------------------------------------------------------------------

" thoughtbot/vim-rspec
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>t :call RunCurrentSpecFile()<CR>

" Reload all the things!
nnoremap <Leader>v :source $MYVIMRC<CR>

"------------------------------------------------------------------------------
" <Leader>W-Z
"------------------------------------------------------------------------------
nnoremap <silent> <Leader>w :call <SID>StripTrailingWhitespaces()<CR>

" Syntastic
map <Leader>y :SyntasticToggleMode<CR>

"-----------------------------------------------------------------------------
"-----------------------------------------------------------------------------
" Other remappings
"-----------------------------------------------------------------------------
"-----------------------------------------------------------------------------

"------------------------------------------------------------------------------
" Fkeys
"------------------------------------------------------------------------------
" nerdtree
map <silent> <F2> :NERDTreeToggle<CR>
map <silent> <F3> :NERDTreeFind<CR>
" let g:NERDTreeMapActivateNode="<F3>"
" let g:NERDTreeMapPreview="<F4>"

" tagbar
nmap <F8> :TagbarToggle<CR>

"------------------------------------------------------------------------------
" Normal mode, single characters
"------------------------------------------------------------------------------
" Split a line and remove whitespace from old line.
" https://www.reddit.com/r/vim/comments/3g8y3r/finally_hacked_together_a_quick_split_line/ctw4b0i
nnoremap S i<CR><ESC>^mwgk:silent! s/\v +$//<CR>:noh<CR>

"------------------------------------------------------------------------------
" Ctrl- combos
"------------------------------------------------------------------------------
" Save some ring-finger key strokes
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Unite Mimic CtrlP
nnoremap <C-p> :Unite -start-insert bookmark tab buffer_tab file_rec/git<CR>

