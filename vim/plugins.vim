""------------------------------------------------""
"" vim-plug setup
""------------------------------------------------""
" vim-plug start
call plug#begin('~/.vim/plugged')

" Color Scheme
Plug 'trusktr/seti.vim'
Plug 'chriskempson/vim-tomorrow-theme'
" Plug 'croaky/vim-colors-github'

""----------------------------------------------------------------------------
" UI tweaks
""----------------------------------------------------------------------------
Plug 'bling/vim-airline'
Plug 'edkolev/tmuxline.vim'
Plug 'christoomey/vim-tmux-runner'
Plug 'bling/vim-bufferline'
Plug 'airblade/vim-gitgutter'
" Plug 'chrisbra/NrrwRgn'
Plug 'BufOnly.vim'                      " For cleaning out buffers
" Plug 'wincent/terminus'               " Would like to use but it disables
                                        " iTerm select to copy

Plug 'yssl/QFEnter'                     " For opening items in QuickFix
Plug 'junegunn/rainbow_parentheses.vim'

""----------------------------------------------------------------------------
" ftdetect plugins
""----------------------------------------------------------------------------
" JS/Coffeescript
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'jelera/vim-javascript-syntax', { 'for': 'javascript' }
Plug 'kchmck/vim-coffee-script', { 'for': 'coffee' }

" Ruby, Rails, etc
Plug 'vim-ruby/vim-ruby',                 { 'for': ['ruby', 'eruby'] }
Plug 'thoughtbot/vim-rspec',              { 'for': ['ruby', 'eruby'] }
Plug 'noprompt/vim-yardoc',               { 'for': ['ruby', 'eruby'] }

" HTML, Markup
Plug 'avakhov/vim-yaml',                  { 'for': 'yaml' }
Plug 'tpope/vim-haml',                    { 'for': 'haml' }
Plug 'heartsentwined/vim-emblem',         { 'for': 'emblem' }
Plug 'slim-template/vim-slim',            { 'for': 'slim' }
Plug 'mustache/vim-mustache-handlebars',  { 'for': ['mustache', 'html.handlebars'] }
Plug 'gabrielelana/vim-markdown',         { 'for': 'markdown' }

" Other languages
Plug 'elixir-lang/vim-elixir',            { 'for': 'elixir' }
Plug 'jimenezrick/vimerl',                { 'for': 'erlang' }
Plug 'tpope/vim-git'
Plug 'tejr/vim-tmux'
Plug 'sql.vim',                           { 'for': 'sql' }
Plug 'exu/pgsql.vim',                     { 'for': 'sql' }

""----------------------------------------------------------------------------
" Shortcuts, navigation
""----------------------------------------------------------------------------
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-vinegar'
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] }
Plug 'Xuyuanp/nerdtree-git-plugin', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] }
" Plug 'tpope/vim-eunuch'
Plug 'jwhitley/vim-matchit'
Plug 'terryma/vim-multiple-cursors'
Plug 'tommcdo/vim-exchange'

" Searching
" Plug 'kien/ctrlp.vim' | Plug 'tacahiroy/ctrlp-funky'
  " { 'on': ['CtrlP', 'CtrlPMRU', 'CtrlPFunky'] } |

Plug 'Shougo/unite.vim' " | Plug 'tsukkee/unite-tag'
Plug 'Shougo/unite-outline'
Plug 'Shougo/vimproc.vim', { 'dir': '~/.vim/plugged/vimproc.vim', 'do': './make -f make_mac.mak' }
Plug 'Shougo/tabpagebuffer.vim'
" Plug 'mileszs/ack.vim'
Plug 'rking/ag.vim'

""----------------------------------------------------------------------------
" Language-specific plugins
""----------------------------------------------------------------------------
" Ruby, Rails
Plug 'tpope/vim-rails', { 'for': ['ruby', 'eruby'] }
Plug 'tpope/vim-projectionist' | Plug 'tpope/vim-rake', { 'for': ['ruby', 'eruby'] }
Plug 'tpope/vim-ragtag', { 'for': ['ruby', 'eruby'] }
Plug 'rorymckinley/vim-rubyhash', { 'for': ['ruby', 'eruby'] }
Plug 'ecomba/vim-ruby-refactoring', { 'for': ['ruby', 'eruby'] }
Plug 'ruby-matchit', { 'for': ['ruby', 'eruby'] }
" Plug 'jgdavey/vim-blockle', { 'for': ['ruby', 'eruby'] }
Plug 'tpope/vim-bundler', { 'for': ['ruby', 'eruby'] }
Plug 'lucapette/vim-ruby-doc', { 'for': ['ruby', 'eruby'] }

""----------------------------------------------------------------------------
" Text-completion
""----------------------------------------------------------------------------
Plug 'closetag.vim'
" Plug 'Valloric/YouCompleteMe'
Plug 'tpope/vim-endwise'

""----------------------------------------------------------------------------
" Tools
""----------------------------------------------------------------------------
" Plug 'henrik/vim-indexed-search'
Plug 'skwp/greplace.vim'
Plug 'AndrewRadev/splitjoin.vim'
" Plug 'scrooloose/syntastic'
Plug '/Users/sloveless/Development/not_my_projects/syntastic'
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-repeat'

Plug 'gerw/vim-HiLinkTrace'       " For syntax highlighting help
" Plug 'nicwest/QQ.vim'             " Postman for vim
" Plug 'Shougo/vimshell.vim'        " For Shuogo/neocomplete.vim
" Plug 'tbabej/taskwiki'
Plug 'vimwiki/vimwiki'

" Git-specific
Plug 'tpope/vim-fugitive'
" Plug 'gregsexton/gitv'
" Plug 'idanarye/vim-merginal'

Plug 'baverman/vial' | Plug 'baverman/vial-http'
" Plug 'henrik/vim-ruby-runner', { 'for': ['ruby'] }

""----------------------------------------------------------------------------
" PLUGIN END
""----------------------------------------------------------------------------
call plug#end()

" Reload after saving this so I can PluginInstall.
au BufWritePost ~/.vim/_vundle.vim so $MYVIMRC
