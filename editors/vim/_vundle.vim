""------------------------------------------------""
"" Vundle.vim setup
""------------------------------------------------""
set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Color Scheme
Plugin 'chriskempson/vim-tomorrow-theme'
Plugin 'trusktr/seti.vim'
Plugin 'noahfrederick/vim-hemisu'

""----------------------------------------------------------------------------
" UI tweaks
""----------------------------------------------------------------------------
Plugin 'bling/vim-airline'
Plugin 'bling/vim-bufferline'
Plugin 'airblade/vim-gitgutter'
Plugin 'chrisbra/NrrwRgn'

""----------------------------------------------------------------------------
" ftdetect plugins
""----------------------------------------------------------------------------
" JS/Coffeescript
Plugin 'pangloss/vim-javascript'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'kchmck/vim-coffee-script'

" Ruby, Rails, etc
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-rake'
Plugin 'tpope/vim-ragtag'
Plugin 'thoughtbot/vim-rspec'
Plugin 'noprompt/vim-yardoc'

" HTML, Markup
Plugin 'avakhov/vim-yaml'
Plugin 'tpope/vim-haml'
Plugin 'heartsentwined/vim-emblem'
Plugin 'slim-template/vim-slim'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'gabrielelana/vim-markdown'

" Other languages
Plugin 'elixir-lang/vim-elixir'
Plugin 'jimenezrick/vimerl'
Plugin 'tpope/vim-git'

""----------------------------------------------------------------------------
" Shortcuts, navigation
""----------------------------------------------------------------------------
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-vinegar'
Plugin 'tpope/vim-eunuch'

" Plugin 'szw/vim-tags'
Plugin 'kien/ctrlp.vim'
Plugin 'tacahiroy/ctrlp-funky'
" Plugin 'LustyJuggler'
" Plugin 'Shougo/unite.vim'
" Plugin 'Shougo/vimproc.vim'
Plugin 'mileszs/ack.vim'
Plugin 'rking/ag.vim'
Plugin 'jwhitley/vim-matchit'
Plugin 'terryma/vim-multiple-cursors'

""----------------------------------------------------------------------------
" Language-specific plugins
""----------------------------------------------------------------------------
" Ruby, Rails
Plugin 'rorymckinley/vim-rubyhash'
Plugin 'ecomba/vim-ruby-refactoring'
Plugin 'ruby-matchit'
Plugin 'jgdavey/vim-blockle'
Plugin 'tpope/vim-bundler'
Plugin 'lucapette/vim-ruby-doc'

""----------------------------------------------------------------------------
" Text-completion
""----------------------------------------------------------------------------
Plugin 'closetag.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'tpope/vim-endwise'

""----------------------------------------------------------------------------
" Tools
""----------------------------------------------------------------------------
" Plugin 'henrik/vim-indexed-search'
Plugin 'skwp/greplace.vim'
Plugin 'AndrewRadev/splitjoin.vim'
Plugin 'scrooloose/syntastic'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-dispatch'

Plugin 'gerw/vim-HiLinkTrace'       " For syntax highlighting help
" Plugin 'nicwest/QQ.vim'             " Postman for vim

" Git-specific
Plugin 'tpope/vim-fugitive'
Plugin 'gregsexton/gitv'
Plugin 'idanarye/vim-merginal'

""----------------------------------------------------------------------------
" END
""----------------------------------------------------------------------------
call vundle#end()            " required


" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
