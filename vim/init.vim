scriptencoding utf-8

""===========================================================================""
" .vimrc
"
"  Partially borrowed from:
"    * http://mixandgo.com/blog/vim-config-for-rails-ninjas
"    * http://amix.dk/vim/vimrc.html
"
" Search settings, stolen from carlhuda/janus.
"
" https://github.com/carlhuda/janus/blob/master/janus/vim/core/before/plugin/settings.vim
"
""===========================================================================""
let g:python_host_prog = '/usr/local/bin/python2'
let g:python3_host_prog = '/usr/local/bin/python3'
let g:mapleader = ' '

""===========================================================================""
" 0. Load vim-plug stuff first
""===========================================================================""
source ~/.config/nvim/plugins.vim

""===========================================================================""
" 1. important
""===========================================================================""
set pastetoggle=<F9> " For Mac

""===========================================================================""
" 2. moving around, searching and patterns
""===========================================================================""
set noignorecase  " searches are case insensitive...
set smartcase     " ... unless they contain at least one capital letter

""===========================================================================""
" 3. tags
""===========================================================================""
set tags+=.tags;$HOME;

""===========================================================================""
" 4. displaying text
""===========================================================================""
set scrolloff=3
set wrap                  " Wrap long lines
" set whichwrap+=<,>,h,l
set linebreak
set breakat=90
set number
set list          " Show invisibles/whitespace
set listchars=tab:▸\ ,trail:·,nbsp:_,extends:❯,precedes:❮

""===========================================================================""
" 5. syntax, highlighting and spelling
""===========================================================================""
" Detect file type and syntax
syntax on
syntax sync fromstart

" Turn off syntax over 500 chars in a line
set synmaxcol=500

set spell

if exists('+spelllang')
  set spelllang=en_us
endif

set colorcolumn=80,120    " Show rulers
set hlsearch              " highlight matches
set cursorline

" colorscheme Tomorrow-Night
" colorscheme Tomorrow
" colorscheme Tomorrow-Night-Eighties
colorscheme seti
" colorscheme apprentice
" let g:onedark_terminal_italics = 1
" colorscheme onedark
" let g:seoul256_background = 234
" colorscheme seoul256
" set background=dark
set termguicolors

let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

""===========================================================================""
" 6. multiple windows
""===========================================================================""
" Open new split window below.
set splitbelow

" Open new vsplit window to the right.
set splitright

""===========================================================================""
" 7. multiple tab pages
""===========================================================================""

""===========================================================================""
" 8. terminal
""===========================================================================""
if !has('nvim')
  set term=xterm-256color
  set ttyfast
  set ttyscroll=3
endif

""===========================================================================""
" 9. using the mouse
""===========================================================================""

""===========================================================================""
" 10. printing
""===========================================================================""

""===========================================================================""
" 11. messages and info
""===========================================================================""
" Don't need this since it's shown in lightline.
set noshowmode

""===========================================================================""
" 12. selecting text
""===========================================================================""
" https://evertpot.com/osx-tmux-vim-copy-paste-clipboard/
set clipboard=unnamed

""===========================================================================""
" 13. editing text
""===========================================================================""
" More info for completion.
set completeopt+=longest,preview

""===========================================================================""
" 14. tabs and indenting
""===========================================================================""
filetype plugin indent on
set smartindent

" Set default spacing
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

" setlocal omnifunc=syntaxcomplete#Complete

""===========================================================================""
" 15. folding
""===========================================================================""
set foldlevelstart=10
set foldnestmax=10      " 10 nested fold max

""===========================================================================""
" 16. diff mode
""===========================================================================""

""===========================================================================""
" 17. mappings
""===========================================================================""
"--------------------------------------
" Leader commands
"
" Listed first where commands pertain to plugins, then alphabetically (where
" they're for things I've defined.
"--------------------------------------

"-----
" BufOnly.vim
" Close buffers
"-----
nnoremap <leader>q :BufOnly<CR>

"-----
" skwp/greplace.vim
"-----
nnoremap <leader>/ :Gsearch<SPACE>
nnoremap <leader>\ :Greplace<CR>

"-----
" tpope/vim-fugitive.
" Follows mappings for the zsh git plugin.
"-----
noremap <leader>ga :Gwrite<CR>
noremap <leader>gbl :Gblame<CR>
noremap <leader>gbr :Gbrowse<CR>
noremap <leader>gc :Gcommit<CR>
noremap <leader>gd :Gvdiff<CR>
noremap <leader>ggp :Gpush<CR>
noremap <leader>ggr :Ggrep<SPACE>
noremap <leader>gi :Git<SPACE>
noremap <leader>glg :Glog<CR>
noremap <leader>gll :Gpull<CR>
noremap <leader>gm :Gmove<SPACE>
noremap <leader>gr :Gremove<CR>
noremap <leader>gs :Gstatus<CR>

"-----
" janko-m/vim-test
"-----
nmap <silent> <leader>s :TestNearest<CR>
nmap <silent> <leader>t :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
" nmap <silent> <leader>g :TestVisit<CR>

"--------------------------------------
" <Leader>A-G
"--------------------------------------

" Close a buffer but don't close the window
nnoremap <silent><leader>bc :bprevious<CR>:bdelete #<CR>
nnoremap <silent><leader>bn :bnext<CR>
nnoremap <silent><leader>bp :bprevious<CR>

" Basic options are set in ~/.ctags
nnoremap <leader>ct :call turboladen#UpdateCTags()<CR>

" Since I remap <C-l> (default redraw command), add a mapping for that.
nnoremap <leader>dr :redraw!<CR>

" eDIT MY vIMRC FILE
nnoremap <leader>ev :vsplit $MYVIMRC<CR>

"--------------------------------------
" <Leader>H-L
"--------------------------------------
noremap <leader>h :call turboladen#SetUpTurboladenDocs()<CR>

" bind K to grep word under cursor
nnoremap <leader>k :Rg "\b<C-R><C-W>\b"<CR>

"--------------------------------------
" <Leader>L-R
"--------------------------------------
" Output the command for manually running RSpec for that line.
nnoremap <leader>m :call turboladen#RSpecCommandForManualRunning()<CR>

" Do a TODO search
nnoremap <leader>o :grep! -i todo<CR>

"--------------------------------------
" <Leader>S-V
"--------------------------------------
" thoughtbot/vim-rspec
" nnoremap <leader>s :call RunNearestSpec()<CR>
" nnoremap <leader>t :call RunCurrentSpecFile()<CR>

" Reload all the things!
nnoremap <leader>v :source $MYVIMRC<CR>

"--------------------------------------
" <Leader>W-Z
"--------------------------------------
nnoremap <leader>w :call turboladen#StripTrailingWhitespaces()<CR>

" puts the caller
nnoremap <leader>x oputs "#" * 90<c-m>puts caller<c-m>puts "#" * 90<esc>

"-------------------------------------------------------------------------------
" Other remappings
"-------------------------------------------------------------------------------

"--------------------------------------
" F-keys
"--------------------------------------
nnoremap <F7> :IndentLinesToggle<CR>

" tagbar
nnoremap <F8> :TagbarToggle<CR>

" F9 is for pastemode

"------------------------------------------------------------------------------
" Ctrl- combos
"------------------------------------------------------------------------------
" Save some ring-finger key strokes
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
imap <C-BS> <C-W>

" Center screen on Down/Up jumping
noremap <C-d> <C-d>zz
noremap <C-u> <C-u>zz

" Omni-complete based on ctags
inoremap <C-]> <C-x><C-]>
" inoremap <C-x><C-]> <C-]>

"------------------------------------------------------------------------------
" Alpha character combos
"------------------------------------------------------------------------------
" Reindent whole file
nnoremap <leader>= :call turboladen#KeepJumps("gg=G")<CR>

" Sometimes ]m jumping for Ruby doesn't work.
nnoremap ]rm :call turboladen#FindRubyMethod('forward')<CR>
nnoremap [rm :call turboladen#FindRubyMethod('backward')<CR>
nnoremap ]rM /\(\<class\>\\|\<module\>\) \u<CR>
nnoremap [rM ?\(\<class\>\\|\<module\>\) \u<CR>

" RSpec jumping
nnoremap ]ri :call turboladen#FindRspecIts('forward')<CR>
nnoremap [ri :call turboladen#FindRspecIts('backward')<CR>
nnoremap ]rd /\(describe\\|context\)\s\('\\|"\)<CR>
nnoremap [rd ?\(describe\\|context\)\s\('\\|"\)<CR>

" Indent after p, gp
" http://vim.wikia.com/wiki/Selecting_your_pasted_text
" nnoremap <expr> p 'p`[' . strpart(getregtype(), 0, 1) . '`]=`['
" nnoremap <expr> gp 'p`[' . strpart(getregtype(), 0, 1) . '`]=`]'

inoremap jk <ESC>

" Disable Ex mode
nnoremap Q <NOP>

" After block yank and paste, move cursor to the end of operated text
" Also, don't copy over-pasted text in visual mode
" vnoremap y y`]
" vnoremap p "_dP`]
" nnoremap p p`]

" No more accidentally showing up command window (Use C-f to show it)
nnoremap q: :q

" Split a line and remove whitespace from old line.
" https://www.reddit.com/r/vim/comments/3g8y3r/finally_hacked_together_a_quick_split_line/ctw4b0i
nnoremap S i<CR><ESC>^mwgk:silent! s/\v +$//<CR>:noh<CR>


""===========================================================================""
" 18. reading and writing files
""===========================================================================""
set nobackup
set nowritebackup

""===========================================================================""
" 19. the swap file
""===========================================================================""
set noswapfile

""===========================================================================""
" 20. command line editing
""===========================================================================""
" Only remember this many commands
set history=300

" shell-like tab completion for command line
set wildmode=longest,list,full
set wildmenu

" Disable output and VCS files
set wildignore+=*.o,*.out,*.obj,*.rbc,*.rbo

" Disable archive files
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz

" Ignore bundler and sass cache
" set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*

" Ignore rails temporary asset caches
" set wildignore+=*/tmp/cache/assets/*/sprockets/*,*/tmp/cache/assets/*/sass/*

" Disable temp and backup files
set wildignore+=*.swp,*~,._*

" Ignore simplecov generated coverage docs
" set wildignore+=coverage/*

" Ignore RubyMine stuff
set wildignore+=.idea/*

""===========================================================================""
" 21. executing external commands
""===========================================================================""

""===========================================================================""
" 22. running make and jumping to errors
""===========================================================================""
" Programs that use :grep will use these; these don't affect the output of
" :Ag.
" if executable('sift')
"   set grepprg=sift\ --line-number\ --binary-skip\ --no-color\ --exclude-dirs\ '.git'
"   set grepformat=%f:%l:%m
" elseif executable('ag')
"   set grepprg=ag\ --vimgrep\ --column
"   set grepformat=%f:%l:%c:%m
" endif
set grepprg=rg\ --vimgrep

""===========================================================================""
" 23. language specific
""===========================================================================""

""===========================================================================""
" 24. multi-byte characters
""===========================================================================""
set termencoding=utf-8

""===========================================================================""
" 25. various
""===========================================================================""
" Default search/replace to work globally.
set gdefault

" Use different cursor for insert mode.
" https://gist.github.com/andyfowler/1195581
if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

""===========================================================================""
" XX. No :options section
""===========================================================================""
set lazyredraw

runtime macros/matchit.vim

augroup vimrc
  autocmd!

  autocmd! BufReadPost,BufWritePost * Neomake

  " Delete the buffer once I'm done with it.
  autocmd BufReadPost fugitive://* set bufhidden=delete

  " Open grep commands, specifically Ggrep, in QuickFix
  autocmd QuickFixCmdPost *grep* cwindow

  "-------------------
  " baverman/vial-http
  "-------------------
  au BufNewFile __vial_http__ nnoremap <buffer> <silent> <C-k> :b __vial_http_req__<CR>
  au BufNewFile __vial_http_req__ nnoremap <buffer> <silent> <C-k> :b __vial_http_hdr__<CR>
  au BufNewFile __vial_http_hdr__ nnoremap <buffer> <silent> <C-k> :b __vial_http__<CR>
  au BufNewFile __vial_http__ setlocal nospell
augroup END

augroup FTCheck
  autocmd BufNewFile,BufRead *.jbuilder set ft=ruby
augroup END

augroup FTOptions " {{{2
  autocmd FileType dirvish setlocal nospell
  autocmd FileType haproxy setlocal commentstring=#\ %s
  autocmd FileType help nnoremap  q :q
  autocmd FileType html setlocal softtabstop=4
  autocmd FileType qf setlocal nospell
  autocmd FileType vim-plug setlocal nospell
  autocmd FileType vimwiki setlocal ts=4 sts=4 sw=4 expandtab
  autocmd FileType vim setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType zsh setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType ruby nnoremap <expr> p 'p`[' . strpart(getregtype(), 0, 1) . '`]=`['
  autocmd FileType ruby nnoremap <expr> gp 'p`[' . strpart(getregtype(), 0, 1) . '`]=`['
augroup END "}}}2


""===========================================================================""
" YY. Plugin options that must be here.
""===========================================================================""
"-------------------------
" ag.vim
" https://robots.thoughtbot.com/faster-grepping-in-vim
" https://www.reddit.com/r/vim/comments/3mtevg/sift_grep_on_steroids/cvhyy8e
"-------------------------
let g:ag_prg='ag --vimgrep --only-matching --silent'
let g:ag_highlight=1            " highlight term after search
let g:ag_working_path_mode='r'  " Search from project root

"-------------------------
" deoplete
"-------------------------
let g:deoplete#enable_at_startup = 1

" deoplete tab-complete
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

"-------------------------
" fzf
" https://github.com/junegunn/dotfiles/blob/da378217ad008d422bc5b577802cad237a2930e1/vimrc#L1197
"-------------------------
set runtimepath+=/usr/local/opt/fzf
let g:fzf_command_prefix = 'Fzf'
" nnoremap <silent> <leader><leader> :FzfGitFiles<CR>
nnoremap <silent> <leader><leader> :FzfFiles<CR>
nnoremap <silent> <leader><CR> :FzfBuffers<CR>
" nnoremap <silent> <leader><C-m> :Maps<CR>

nnoremap <silent> <leader>fs :call fzf#run({ 'tmux_height': winheight('.') / 4, 'sink': 'botright split' })<CR>
nnoremap <silent> <leader>fv :call fzf#run({ 'tmux_width': winwidth('.') / 4, 'sink': 'vertical botright split' })<CR>
nnoremap <leader>fu :FzfBTags<CR>

" --column: Show column number
" --line-number: Show line number
" --no-heading: Do not show file headings in results
" --fixed-strings: Search term as a literal string
" --ignore-case: Case insensitive search
" --no-ignore: Do not respect .gitignore, etc...
" --hidden: Search hidden files and folders
" --follow: Follow symlinks
" --glob: Additional conditions for search (in this case ignore everything in the .git/ folder)
" --color: Search color options
command! -bang -nargs=* FzfFind
      \ call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --glob "!vendor/*" --color "always" '.shellescape(<q-args>), 1, <bang>0)

" nnoremap <leader>. :FzfFind!<SPACE>
nnoremap <leader>. :Rg<SPACE>

"-------------------------
" skwp/greplace.vim
"-------------------------
if executable('sift')
  let g:grep_cmd_opts = '--line-number --no-color --no-conf --binary-skip'
endif

"-------------------------
" indentLine
"-------------------------
let g:indentLine_color_term = 239
let g:indentLine_char = '︙'
let g:indentLine_enabled = 0


"-------------------------
" autozimu/LanguageClient-neovim
"-------------------------
" Required for operations modifying multiple buffers like rename.
" set hidden

let g:LanguageClient_serverCommands = {
    \ 'rust': ['rustup', 'run', 'nightly', 'rls'],
    \ }

" Automatically start language servers.
let g:LanguageClient_autoStart = 1

"-------------------------
" lightline
"-------------------------
let g:lightline = {
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'fugitive', 'filename'] ]
      \ },
      \ 'component_function': {
      \   'fugitive': 'turboladen#LightLineFugitive',
      \   'readonly': 'turboladen#LightLineReadonly',
      \   'modified': 'turboladen#LightLineModified',
      \   'filename': 'turboladen#LightLineFilename',
      \   'fileformat': 'turboladen#LightLineFileformat',
      \   'filetype': 'turboladen#LightLineFiletype',
      \   'fileencoding': 'turboladen#LightLineFileencoding',
      \   'mode': 'turboladen#LightLineMode'
      \ }
      \ }

      " \ 'separator': { 'left': '', 'right': '' },
      " \ 'subseparator': { 'left': '', 'right': '' }

"-------------------------
" limelight
"-------------------------
" nmap <Leader>l <Plug>(Limelight)
" xmap <Leader>l <Plug>(Limelight)

"-------------------------
" neomake
"-------------------------
let g:neomake_ruby_rubocop_maker = {
      \ 'exe': 'bundle',
      \ 'args': ['exec', 'rubocop', '--format', 'emacs'],
      \ 'errorformat': '%f:%l:%c: %t: %m,%E%f:%l: %m',
      \ 'postprocess': function('neomake#makers#ft#ruby#RubocopEntryProcess')
      \ }

let g:yard_error_format =
     \ '%W[warn]:\ %m\ in\ file\ `%f`\ near\ line\ %l,%Z,'.
      \ '%E[error]:\ %m\ in\ file\ `%f`\ near\ line\ %l,%Z,'.
      \ '%-G%.%.#'

let g:neomake_ruby_yard_maker = {
     \ 'exe': 'yard',
     \ 'args': ['stats'],
     \ 'errorformat': g:yard_error_format
     \ }

let g:neomake_coffee_checkers = ['coffeelint']        " npm install -g coffeelint
let g:neomake_css_checkers = ['csslint']              " npm install -g csslint
let g:neomake_elixir_checkers = ['elixirc']
let g:neomake_haml_checkers = ['hamllint']
let g:neomake_html_checkers = ['tidy']
let g:neomake_javascript_checkers = ['jshint']
let g:neomake_json_checkers = ['jsonlint']            " npm install -g jsonlint
let g:neomake_markdown_checkers = ['mdl']             " gem install mdl
let g:neomake_ruby_enabled_makers = ['mri', 'rubocop', 'yard']
let g:neomake_rust_checkers = ['rustc']
let g:neomake_sh_checkers = ['shellcheck']            " brew install shellcheck
let g:neomake_scss_checkers = ['scsslint']            " brew install shellcheck
let g:neomake_sql_checkers = ['sqlint']               " gem install sqlint
let g:neomake_vimscript_checkers = ['vint']           " pip install vim-vint
let g:neomake_yaml_checkers = ['yamllint']            " pip install yamllint

let g:neomake_place_signs = 1
let g:neomake_open_list = 0

"-------------------------
" tmuxline.vim
"-------------------------
let g:tmuxline_preset = 'full'
" let g:tmuxline_powerline_separators = 0

"-------------------------
" timonv/vim-cargo
"-------------------------
let g:cargo_command = 'Dispatch cargo {cmd}'

"-------------------------
" idanarye/vim-casetrate
"-------------------------
" let g:casetrate_leader = '\c'

"-------------------------
" airblade/vim-gitgutter
"-------------------------
" let g:gitgutter_sign_added = '✚'
" let g:gitgutter_sign_modified = '✹'
" let g:gitgutter_sign_removed = '✖'
" let g:gitgutter_sign_removed_first_line = '^^'
" let g:gitgutter_sign_modified_removed = '⟪⟫'
let g:gitgutter_sign_modified_removed = '⇄'

"-------------------------
" elzr/vim-json
"-------------------------
let g:vim_json_syntax_conceal = 0

"-------------------------
" gabrieleana/vim-markdown
"-------------------------
let g:markdown_mapping_switch_status = '<leader>ms'

"-------------------------
" jremmen/vim-ripgrep
"-------------------------
let g:rg_highlight = 1

"-------------------------
" thoughtbot/vim-rspec
"-------------------------
" let g:rspec_runner = 'os_x_iterm2'
" let g:rspec_command = turboladen#RSpecVimCommand()

"-------------------------
" SirVer/ultisnips
"-------------------------
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<c-b>'
let g:UltiSnipsJumpBackwardTrigger = '<c-z>'

"-------------------------
" vim-ruby-doc
"-------------------------
let g:ruby_doc_command='open'
let g:ruby_doc_ruby_mapping='<leader>rb'
let g:ruby_doc_rails_mapping='<leader>rr'
let g:ruby_doc_rspec_mapping='<leader>rs'

"-------------------------
" janko-m/vim-test
"-------------------------
" let g:test#strategy = 'dispatch'
let g:test#strategy = 'tslime'
let g:test#preserve_screen = 1

"-------------------------
" vimwiki
"-------------------------
let g:vimwiki_list = [{'path': '$HOME/Development/projects/vimwiki'}]
