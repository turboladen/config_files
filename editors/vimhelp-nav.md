Navigation
==========

netrw (Explorer Mode)
---------------------

* `i`   - Toggle view mode
* `d`   - Create a new directory
* `%`   - Create and open a new file
* `D`   - Delete a directory or file
* `R`   - Rename a file
* `o`   - Open file in a horizontal split
* `v`   - Open file in a vertical split

### [tpope/vim-vinegar](https://github.com/tpope/vim-vinegar) ###

* `-`       - Hop up to the directory listing.
* `.`       - When viewing the listing, pre-populate in the `:` command
* `~`       - Go home


Searching, Replacing
--------------------

### [mileszs/ack.vim](https://github.com/mileszs/ack.vim) ###

Format: `:Ack [options] {pattern} [{directories}]`

* `<Leader>/`   - `:Ack<Space>`

### [rcking/ag.vim](https://github.com/rking/ag.vim) ###

Format: `:Ag [options] {pattern} [{directory}]`

* `\`       - :Ag<SPACE>
* `K`       - Search for word under cursor

Once the quick-fix window is open:

* `e`       - open file and close the quick-fix window
* `o`       - open (same as enter)
* `go`      - preview file (open but maintain focus on ag.vim results)
* `t`/`T`   - open in new tab (/silently)
* `h`/`H`   - open in horizontal split (/silently)
* `v`/`gv`  - open in vertical split (/silently)
* `q`       - close the quick-fix window

### [skwp/greplace.vim](https://github.com/skwp/greplace.vim) ###

Global replace

* `:Gsearch`

### [majutsushi/tagbar](https://github.com/majutsushi/tagbar) ###

Like RubyMine's `Structure` window.

* `F8`    - :ToggleTagbar

Other
-----

### [airblade/vim-gitgutter](https://github.com/airblade/vim-gitgutter) ###

Shows git changes in left side gutter.

* `]c`    - Jump to next change
* `[c`    - Jump to previous change

### [tpope/vim-bundler](https://github.com/tpope/vim-bundler) ###

* `:Bundle`   - `bundle install`
* `:Bopen`    - `bundle open` a gem

### [chrisbra/NrrwRgn](https://github.com/chrisbra/NrrwRgn) ###

* `:NR` or <leader>nr     - Focus on a selected region

### [lucapette/vim-ruby-doc](https://github.com/lucapette/vim-ruby-doc) ###

* `RB`      - Search rubydocs.info for Ruby
* `RS`      - Search relishapp.com for RSpec
* `RR`      - Search api.rubyonrails.org for Rails
