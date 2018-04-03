""------------------------------------------------""
"" vim-plug setup
""------------------------------------------------""
" vim-plug start
call plug#begin('~/.config/nvim/plugged')

""===========================================================================""
" 0.
""===========================================================================""
" Enable repeating supported plugin maps with '.'
Plug 'tpope/vim-repeat'

" Project configuration
Plug 'tpope/vim-projectionist'

Plug 'vim-scripts/visSum.vim'

""----------------------------------------------------------------------------
" UI tweaks
""----------------------------------------------------------------------------
" A light and configurable statusline/tabline
Plug 'itchyny/lightline.vim'

" Simple tmux statusline generator with support for powerline symbols and
" statusline / airline / lightline integration
Plug 'edkolev/tmuxline.vim'

" A simple, vimscript only, command runner for sending commands from vim to
" tmux.
" Plug 'christoomey/vim-tmux-runner'

" Shows a git diff in the gutter and stages/undoes hunks.
Plug 'airblade/vim-gitgutter'

" Tmux scripting made easy.
" Plug 'junegunn/heytmux'

" Enhanced terminal integration for Vim
Plug 'wincent/terminus'

" vim-signature is a plugin to place, toggle and display marks.
Plug 'kshenoy/vim-signature'

""===========================================================================""
" 2. moving around, searching and patterns
""===========================================================================""
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Use RipGrep in Vim and display results in a quickfix list
Plug 'jremmen/vim-ripgrep'

" Project-wide search/replace with :Gsearch and :Greplace
Plug 'skwp/greplace.vim'

" combine with netrw to create a delicious salad dressing.
Plug 'tpope/vim-vinegar'

" pairs of handy bracket mappings
Plug 'tpope/vim-unimpaired'

" Directory viewer for Vim
Plug 'justinmk/vim-dirvish'

" extended % matching for HTML, LaTeX and many other languages
Plug 'tmhedberg/matchit'

" Create your own text objects | A custom text object for selecting ruby
" blocks.
Plug 'kana/vim-textobj-user' | Plug 'nelstrom/vim-textobj-rubyblock'

" "Open a quickfix item in a window you choose
" Plug 'yssl/QFEnter'

" Language Server Protocol support for nvim
Plug 'autozimu/LanguageClient-neovim', {
      \ 'branch': 'next',
      \ 'do': 'bash install.sh',
    \ }

" (Optional) Showing function signature and inline doc.
Plug 'Shougo/echodoc.vim'

" Change code right in the quickfix window
Plug 'stefandtw/quickfix-reflector.vim'

""===========================================================================""
" 3. tags
""===========================================================================""
" A Completion Framework for Neovim
Plug 'roxma/nvim-completion-manager'
Plug 'roxma/ncm-rct-complete'
Plug 'roxma/nvim-cm-racer'
Plug 'Shougo/neco-vim'
Plug 'Shougo/neoinclude.vim'

" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'fishbullet/deoplete-ruby'
" Plug 'Shougo/vimproc.vim'

" tab completion for ruby things. Requires:
"   gem install rcodetools fastri
" Plug 'osyo-manga/vim-monster',      { 'for': ['ruby', 'eruby'] }

" a collection of Ruby code manipulation tools
" Plug 'tnoda/rcodetools-x'

" deoplete rcodetools source for Ruby
Plug 'Shougo/deoplete-rct'

" Perform all your vim insert mode completions with Tab
Plug 'ervandew/supertab'

" Sidebar of methods/functions
Plug 'majutsushi/tagbar', { 'on': 'TagbarToggle' }

" An up-to-date version of gtags-cscope.vim from GNU global
" Plug 'joereynolds/gtags-scope'

" Async plugin for Vim/NeoVim to ease the use of ctags/gtags.
" Plug 'jsfaint/gen_tags.vim'

""===========================================================================""
" 5. syntax, highlighting and spelling
""===========================================================================""
" Color Scheme
Plug 'trusktr/seti.vim'

Plug 'fenetikm/falcon'

" Hyperfocus-writing in Vim
" Plug 'junegunn/limelight.vim'

" Show vertical line for indentation level
" Plug 'Yggdroot/indentLine'

" Define a different filetype syntax on regions of a buffer
" Plug 'vim-scripts/SyntaxRange'

""===========================================================================""
" 6. multiple windows
""===========================================================================""
" Delete all the buffers except the current/named buffer
Plug 'vim-scripts/BufOnly.vim'

""===========================================================================""
" 11. messages and info
""===========================================================================""
" Adds :HLT commands for viewing the hilight setting for the cursor position.
Plug 'gerw/vim-HiLinkTrace'       " For syntax highlighting help

""===========================================================================""
" 12. selecting text
""===========================================================================""
" True Sublime Text style multiple selections for Vim
Plug 'terryma/vim-multiple-cursors'

""===========================================================================""
" 13. editing text
""===========================================================================""
" wisely add 'end' in ruby, endfucntion/endif/more in vimscript, etc.
Plug 'tpope/vim-endwise'

" comment stuff out
Plug 'tpope/vim-commentary'

" quoting/parenthesizing made simple
Plug 'tpope/vim-surround'

" Adds gS and gJ to split/join code blocks.
Plug 'AndrewRadev/splitjoin.vim'

" Easy text exchange operator
Plug 'tommcdo/vim-exchange'

" Protect against weird unicode copy/paste
Plug 'vim-utils/vim-troll-stopper'

" Plug 'SirVer/ultisnips'
" Plug 'honza/vim-snippets'

" For case swapping
Plug 'idanarye/vim-casetrate'

""===========================================================================""
" 15. folding
""===========================================================================""
" Speed up Vim by updating folds only when called-for
Plug 'Konfekt/FastFold'

""===========================================================================""
" 21. executing external commands
""===========================================================================""
" Asynchronous build and test dispatcher. Used for running specs in a separate
" tmux pane.
Plug 'tpope/vim-dispatch'

" Vim plugin to execute Ruby into an output buffer, similar to cmd-R in
" TextMate.
" Plug 'henrik/vim-ruby-runner', { 'for': ['ruby'] }

" Plug 'kassio/neoterm'
" let g:neoterm_rspec_lib_cmd=turboladen#RSpecShellCommand()

" Vim sugar for the UNIX shell commands that need it the most
Plug 'tpope/vim-eunuch'

" run your tests at the speed of thought
Plug 'janko-m/vim-test'

" Send command from vim to a running tmux session
Plug 'jgdavey/tslime.vim'

""===========================================================================""
" 22. running make and jumping to errors
""===========================================================================""
" Linting
Plug 'benekastah/neomake'

""===========================================================================""
" 23. language specific
""===========================================================================""

"----------------
" CSS
"----------------
" Cutting-edge vim css syntax file
Plug 'JulesWang/css.vim', { 'for': 'css' }

"----------------
" CoffeeScript
"----------------
" Covers syntax, indenting, compiling, and more.
Plug 'kchmck/vim-coffee-script',          { 'for': 'coffee' }

"----------------
" dockerfile
"----------------
" Plug 'docker/docker', { 'for': 'dockerfile' }

"----------------
" Elixir
"----------------
Plug 'elixir-lang/vim-elixir', { 'for': ['elixir', 'eelixir'] }
Plug 'avdgaag/vim-phoenix'

"----------------
" Elm
"----------------
Plug 'elmcast/elm-vim'

"----------------
" Emblem
"----------------
Plug 'heartsentwined/vim-emblem',         { 'for': 'emblem' }

"----------------
" Git
"----------------
" Vim Git runtime files
Plug 'tpope/vim-git'

" a Git wrapper so awesome, it should be illegal
Plug 'tpope/vim-fugitive' | Plug 'tommcdo/vim-fubitive'

" Git commit browser
Plug 'junegunn/gv.vim'

" A Vim plugin for more pleasant editing on commit messages
Plug 'rhysd/committia.vim'

"----------------
" HAML
"----------------
" Vim runtime files for Haml, Sass, and SCSS
Plug 'tpope/vim-haml'

"----------------
" HTML
"----------------
" emmet for vim
Plug 'mattn/emmet-vim'

"----------------
" Handlebars
"----------------
" Syntax, matchit support, navigations, text objects
Plug 'mustache/vim-mustache-handlebars',  { 'for': ['mustache', 'html.handlebars'] }

"----------------
" haproxy
"----------------
" Plug 'sclo/haproxy.vim'
Plug 'vim-scripts/haproxy'

"----------------
" JS
"----------------
" Vastly improved Javascript indentation and syntax support
Plug 'pangloss/vim-javascript',      { 'for': 'javascript' }
" Enhanced javascript syntax file
Plug 'jelera/vim-javascript-syntax', { 'for': 'javascript' }

"----------------
" JSON
"----------------
" A better JSON for Vim: distinct highlighting of keywords as values,
" JSON-specific (non-JS) warnings, quote concealing.
Plug 'elzr/vim-json'

"----------------
" Mapserver
"----------------
Plug 'calvinchengx/vim-mapserver'

"----------------
" Markdown
"----------------
" Plug 'gabrielelana/vim-markdown',         { 'for': 'markdown' }

Plug 'godlygeek/tabular'

" Syntax highlighting, matching rules and mappings
Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }

"----------------
" Ruby
"----------------
" Ruby on Rails power tools
Plug 'tpope/vim-rails',   { 'for': ['ruby', 'eruby'] }

" Its' like rails.vim without the rails
Plug 'tpope/vim-rake',    { 'for': ['ruby', 'eruby'] }

" Configuration files for editing and compiling Ruby
Plug 'vim-ruby/vim-ruby', { 'for': ['ruby', 'eruby'] }

" Better rspec syntax highlighting for Vim
Plug 'sheerun/rspec.vim'

" Ruby syntax extensions for highlighting YARD documentation
Plug 'sheerun/vim-yardoc',          { 'for': ['ruby', 'eruby'] }

" Refactoring tool for Ruby in vim
Plug 'ecomba/vim-ruby-refactoring', { 'for': ['ruby', 'eruby'] }

" Lightweight support for Ruby's Bundler
Plug 'tpope/vim-bundler'

" Browse Ruby, RSpec, and Rails API docs quickly with Vim
Plug 'lucapette/vim-ruby-doc', { 'for': ['ruby', 'eruby'] }

"Ruby format for vim via rufo
" Plug 'splattael/rufo-vim',     { 'for': ['ruby', 'eruby'] }

"----------------
" Rust
"----------------
Plug 'rust-lang/rust.vim',   { 'for': ['rust'] }

" Racer support for Vim
Plug 'racer-rust/vim-racer', { 'for': ['rust'] }

" Vim syntax for TOML
Plug 'cespare/vim-toml'

" Rust Cargo command bindings
Plug 'timonv/vim-cargo', { 'for': ['rust'] }

"----------------
" Slim
"----------------
" Syntax highlighting for VIM
Plug 'slim-template/vim-slim', { 'for': 'slim' }

"----------------
" SQL
"----------------
" Better SQL Syntax highlighting with errors.
Plug 'vim-scripts/sql.vim', { 'for': 'sql' }
Plug 'exu/pgsql.vim',       { 'for': 'sql' }

"----------------
" tmux
"----------------
" Syntax, navigation, building
Plug 'tmux-plugins/vim-tmux'

" Restores `FocusGained` and `FocusLost` autocommand events work when using
" vim inside Tmux.
Plug 'tmux-plugins/vim-tmux-focus-events'

"----------------
" YAML
"----------------
" Plug 'avakhov/vim-yaml',                  { 'for': 'yaml' }
" Plug 'ingydotnet/yaml-vim',               { 'for': 'yaml' }
Plug 'stephpy/vim-yaml', { 'for': 'yaml' }
Plug 'tarekbecker/vim-yaml-formatter', { 'for': 'yaml' }

""===========================================================================""
" 25. various
""===========================================================================""

""----------------------------------------------------------------------------
" Tools
""----------------------------------------------------------------------------
" Plug 'tbabej/taskwiki'
Plug 'vimwiki/vimwiki'

" Library of common functions
" Plug 'vim-scripts/ingo-library'

""----------------------------------------------------------------------------
" PLUGIN END
""----------------------------------------------------------------------------
call plug#end()

" Reload after saving this so I can PluginInstall.
augroup plugins_reloader
  autocmd!
augroup END

au plugins_reloader BufWritePost ~/.config/nvim/plugins.vim so $MYVIMRC
