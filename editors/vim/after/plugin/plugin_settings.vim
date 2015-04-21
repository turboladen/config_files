"------------------------------------------------------------------------------
" vim-airline
"------------------------------------------------------------------------------
let g:airline_section_b = '%{airline#util#wrap(airline#extensions#branch#get_head(),0)}'

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

"------------------------------------------------------------------------------
" tmuxline.vim
"------------------------------------------------------------------------------
let g:tmuxline_preset = 'full'
" let g:tmuxline_powerline_separators = 0

"------------------------------------------------------------------------------
" syntastic
"------------------------------------------------------------------------------
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_coffee_checkers = ['coffee', 'coffeelint']
let g:syntastic_css_checkers = ['csslint']              " npm install -g csslint
let g:syntastic_elixir_checkers = ['elixir']
let g:syntastic_eruby_checkers = ['ruby']
let g:syntastic_haml_checkers = ['haml', 'haml_lint']   " gem install haml-lint
let g:syntastic_handlebars_checkers = ['handlebars']
let g:syntastic_javascript_checkers = ['standard']      " npm install -g standard
let g:syntastic_markdown_checkers = ['mdl']             " gem install mdl
let g:syntastic_ruby_checkers = ['mri', 'rubocop', 'reek']
let g:syntastic_sass_checkers = ['sass']
let g:syntastic_sh_checkers = ['sh']
let g:syntastic_slim_checkers = ['slimrb']
" let g:syntastic_text_checkers = ['language_check']      " pip install --user --upgrade language-check
let g:syntastic_yaml_checkers = ['jsyaml']              " npm install -g js-yaml
let g:syntastic_zsh_checkers = ['zsh']

let g:syntastic_enable_elixir_checker = 1
let g:syntastic_ruby_rubocop_args = "--force-exclusion --display-cop-names --no-color"
" let g:syntastic_text_language_check_args = '--language=en-US'
let g:syntastic_aggregate_errors = 1

map <Leader>y :SyntasticToggleMode<CR>

"------------------------------------------------------------------------------
" ctrlp
"------------------------------------------------------------------------------
" let g:ctrlp_cmd = 'CtrlPMRU'        " Default to MRU find
hi def link CtrlPMatch CursorLine
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git\|node_modules\|bin\|\.hg\|\.svn\|build\|log\|resources\|coverage\|doc\|tmp\|public/assets\|vendor\|Android',
  \ 'file': '\.jpg$\|\.exe$\|\.so$\|tags$\|\.dll$'
  \ }
nnoremap <C-p> :CtrlPMRU<CR>

"------------------------------------------------------------------------------
" ctrlp-funky
"------------------------------------------------------------------------------
nnoremap <Leader>fu :CtrlPFunky<Cr>
nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>

"------------------------------------------------------------------------------
" tagbar
"------------------------------------------------------------------------------
nmap <F8> :TagbarToggle<CR>

"------------------------------------------------------------------------------
" vim-tags
"------------------------------------------------------------------------------
" let g:vim_tags_auto_generate=1
" let g:vim_tags_use_vim_dispatch=1

" Basic options are set in ~/.ctags
map <Leader>ct :!ctags .<CR>

"------------------------------------------------------------------------------
" skwp/greplace.vim
"------------------------------------------------------------------------------
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  let g:grep_cmd_opts = '--line-numbers --noheading'
endif

"------------------------------------------------------------------------------
" gabrieleana/vim-markdown
"------------------------------------------------------------------------------
let g:markdown_mapping_switch_status = '<Leader>ms'

"------------------------------------------------------------------------------
" mileszs/ack.vim
" https://github.com/carlhuda/janus/blob/0e34a62fac3a38ccc459bf3a6dab6ef1ec6dc9a5/janus/vim/tools/janus/after/plugin/ack.vim
"------------------------------------------------------------------------------
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

map <Leader>/ :Ack<space>

"------------------------------------------------------------------------------
" unite
"------------------------------------------------------------------------------
" Mimic CtrlP
" nnoremap <C-p> :Unite file_rec/async<CR>
" call unite#filters#matcher_default#use(['matcher_fuzzy'])
" call unite#filters#sorter_default#use(['sorter_rank'])

" " Ack
" nnoremap <space>/ :Unite grep:.<CR>

" " yankring/yankstack
" let g:unite_source_history_yank_enable = 1
" nnoremap <space>y :Unite history/yank<CR>

" " LustyJuggler
" nnoremap <space>s :Unite -quick-match buffer<CR>

"------------------------------------------------------------------------------
" ag.vim
" https://robots.thoughtbot.com/faster-grepping-in-vim
"------------------------------------------------------------------------------
" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects
  " .gitignore
  " let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  let g:ctrlp_user_command = 'ag %s -l -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" bind K to grep word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

" bind \ (backward slash) to grep shortcut
" command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
command! -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
nnoremap \ :Ag<SPACE>


"------------------------------------------------------------------------------
" vim-ruby-doc
"------------------------------------------------------------------------------
let g:ruby_doc_command='open'
