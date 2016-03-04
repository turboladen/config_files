""------------------------------------------------""
"" vim-plug setup
""------------------------------------------------""
" vim-plug start
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'

" Color Scheme
Plug 'trusktr/seti.vim'

""----------------------------------------------------------------------------
" UI tweaks
""----------------------------------------------------------------------------
Plug 'itchyny/lightline.vim'
Plug 'edkolev/tmuxline.vim'
Plug 'christoomey/vim-tmux-runner'
Plug 'airblade/vim-gitgutter'
Plug 'BufOnly.vim'                      " For cleaning out buffers
" Plug 'yssl/QFEnter'                     " For opening items in QuickFix

" Show vertical line for indentation level
" Plug 'Yggdroot/indentLine'

""----------------------------------------------------------------------------
" ftdetect plugins
""----------------------------------------------------------------------------
" JS/Coffeescript
Plug 'pangloss/vim-javascript',           { 'for': 'javascript' }
Plug 'jelera/vim-javascript-syntax',      { 'for': 'javascript' }
Plug 'kchmck/vim-coffee-script',          { 'for': 'coffee' }

" Ruby, Rails, etc
Plug 'vim-ruby/vim-ruby',                 { 'for': ['ruby', 'eruby'] }
Plug 'thoughtbot/vim-rspec',              { 'for': ['ruby', 'eruby'] }
Plug 'noprompt/vim-yardoc',               { 'for': ['ruby', 'eruby'] }

" HTML, Markup
" Plug 'avakhov/vim-yaml',                  { 'for': 'yaml' }
Plug 'ingydotnet/yaml-vim',               { 'for': 'yaml' }
Plug 'tpope/vim-haml',                    { 'for': 'haml' }
Plug 'heartsentwined/vim-emblem',         { 'for': 'emblem' }
Plug 'slim-template/vim-slim',            { 'for': 'slim' }
Plug 'mustache/vim-mustache-handlebars',  { 'for': ['mustache', 'html.handlebars'] }
Plug 'gabrielelana/vim-markdown',         { 'for': 'markdown' }
Plug 'mattn/emmet-vim',                   { 'for': ['html', 'mustache', 'html.handlebars', 'eelixir'] }

" Other languages
Plug 'avdgaag/vim-phoenix'
Plug 'elixir-lang/vim-elixir',            { 'for': ['elixir', 'eelixir'] }
Plug 'tpope/vim-git'
Plug 'sql.vim',                           { 'for': 'sql' }
Plug 'exu/pgsql.vim',                     { 'for': 'sql' }

" tmux
Plug 'tmux-plugins/vim-tmux'
Plug 'tmux-plugins/vim-tmux-focus-events'

""----------------------------------------------------------------------------
" Shortcuts, navigation
""----------------------------------------------------------------------------
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-vinegar'
Plug 'scrooloose/nerdtree',         { 'on': ['NERDTreeToggle', 'NERDTreeFind', 'NERDTreeMirror'] }
Plug 'Xuyuanp/nerdtree-git-plugin', { 'on': ['NERDTreeToggle', 'NERDTreeFind', 'NERDTreeMirror'] }
" Plug 'tpope/vim-eunuch'
Plug 'tmhedberg/matchit'
Plug 'terryma/vim-multiple-cursors'
Plug 'tommcdo/vim-exchange'
Plug 'kana/vim-textobj-user'
Plug 'nelstrom/vim-textobj-rubyblock'

" Searching
" Plug 'kien/ctrlp.vim' | Plug 'tacahiroy/ctrlp-funky'
  " { 'on': ['CtrlP', 'CtrlPMRU', 'CtrlPFunky'] } |

" Plug 'Shougo/vimproc.vim', { 'dir': '~/.vim/plugged/vimproc.vim', 'do': './make -f make_mac.mak' }
" Plug 'Shougo/tabpagebuffer.vim'
" Plug 'mileszs/ack.vim'
Plug 'rking/ag.vim'
" Plug 'kalafut/vim-sift'
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

" For case swapping
" Plug 'idanarye/vim-casetrate'

""----------------------------------------------------------------------------
" Language-specific plugins
""----------------------------------------------------------------------------
" Ruby, Rails
Plug 'tpope/vim-rails',   { 'for': ['ruby', 'eruby'] }
Plug 'tpope/vim-rake',    { 'for': ['ruby', 'eruby'] }
" Plug 'tpope/vim-ragtag',  { 'for': ['ruby', 'eruby'] }
Plug 'tpope/vim-projectionist'

if !has('nvim')
  Plug 'rorymckinley/vim-rubyhash', { 'for': ['ruby', 'eruby'] }
end

Plug 'ecomba/vim-ruby-refactoring', { 'for': ['ruby', 'eruby'] }
" Plug 'jgdavey/vim-blockle', { 'for': ['ruby', 'eruby'] }
Plug 'tpope/vim-bundler'
Plug 'lucapette/vim-ruby-doc',      { 'for': ['ruby', 'eruby'] }

""----------------------------------------------------------------------------
" Text-completion
""----------------------------------------------------------------------------
" Plug 'closetag.vim'
" Plug 'craigemery/vim-autotag'

Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer' }

Plug 'tpope/vim-endwise'

""----------------------------------------------------------------------------
" Tools
""----------------------------------------------------------------------------
" Project-wide search/replace with :Gsearch and :Greplace
Plug 'skwp/greplace.vim'

" Adds gS and gJ to split/join code blocks.
Plug 'AndrewRadev/splitjoin.vim'

" Linting
if has('nvim')
  Plug 'benekastah/neomake'
else
  " Plug 'scrooloose/syntastic'
  Plug '/Users/sloveless/Development/not_my_projects/syntastic'
endif

" Sidebar of methods/functions
Plug 'majutsushi/tagbar', { 'on': 'TagbarToggle' }

Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-repeat'
" Plug 'TailMinusF'

" Adds :HLT commands for viewing the hilight setting for the cursor position.
Plug 'gerw/vim-HiLinkTrace'       " For syntax highlighting help
" Plug 'tbabej/taskwiki'
Plug 'vimwiki/vimwiki'

" Git-specific
Plug 'tpope/vim-fugitive' | Plug 'tommcdo/vim-fubitive'
Plug 'gregsexton/gitv', { 'on': 'Gitv' }

" HTTP client
" Plug 'nicwest/QQ.vim'
" Plug 'baverman/vial' | Plug 'baverman/vial-http'
" Plug 'aquach/vim-http-client'

" Plug 'henrik/vim-ruby-runner', { 'for': ['ruby'] }

" Docs
" Plug 'rizzatti/dash.vim', { 'on': ['Dash', 'Dash!'] }
" Plug 'rizzatti/dash.vim'

" Protect against weird unicode copy/paste
Plug 'vim-utils/vim-troll-stopper'

""----------------------------------------------------------------------------
" PLUGIN END
""----------------------------------------------------------------------------
call plug#end()

" Reload after saving this so I can PluginInstall.
au BufWritePost ~/.vim/plugins.vim so $MYVIMRC
