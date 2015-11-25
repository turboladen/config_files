"----
" Search settings, stolen from carlhuda/janus.
"
" https://github.com/carlhuda/janus/blob/master/janus/vim/core/before/plugin/settings.vim
"----
set hlsearch      " highlight matches
set noignorecase  " searches are case insensitive...
set smartcase     " ... unless they contain at least one capital letter

" Disable output and VCS files
set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.rbo,*.class,.svn,*.gem

" Disable archive files
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz

" Ignore bundler and sass cache
set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*

" Ignore librarian-chef, vagrant, test-kitchen and Berkshelf cache
set wildignore+=*/tmp/librarian/*,*/.vagrant/*,*/.kitchen/*,*/vendor/cookbooks/*

" Ignore rails temporary asset caches
set wildignore+=*/tmp/cache/assets/*/sprockets/*,*/tmp/cache/assets/*/sass/*

" Disable temp and backup files
set wildignore+=*.swp,*~,._*

" Ignore simplecov generated coverage docs
set wildignore+=coverage/*

" Ignore RubyMine stuff
set wildignore+=.idea/*
