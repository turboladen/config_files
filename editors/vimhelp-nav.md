Navigation
==========

Buffers
-------

* CTRL-W[direction] - Switch buffers
* CTRL-W s      - Split horizontally
* CTRL-W v      - Split vertically
* :new {file}   - New horizontally split window, empty file
* :vnew {file}  - New vertically split window, empty file
* :hide         - 
* CTRL-W p      - Go to previous window
* CTRL-W r/R    - Rotate windows
* CTRL-W x      - Exchange windows, this with the next one
* CTRL-W HJKL   - Send window to left/top/bottom/right
* CTRL-W -/+    - Make window smaller/bigger
* CTRL-W =      - Make windows the same size

Tags
----

* <Leader>ct  - Rebuild tags
* CTRL-]      - Use word under cursor as tag to search for
* CTRL-T      - Go back to where you came from after CTRL-]
* `:ts`       - List tags that match the last search
* `:tn`/`:tp` - Go to next/previous matching tag

Folds
-----

* zo/zc/za/zO/zC/zA     = Open/close/toggle/{recursively..} fold
* zr/zm/zR/zM           = Reduce/more folds
* zv                    = Expand folds to reveal cursor

kien/ctrlp.vim, tacahiroy/ctrlp-funky
-------------------------------------

* `:CtrlPBuffer`    - Find in buffer mode
* `:CtrlPMRU`       - Find in MRU mode
* `:CtrlPMixed`     - Find in Files, Buffers and MRU files at the same time
* `:CtrlPTag`       - Find tag
* CTRL-r            - Switch to regexp mode
* CTRL-f/b          - Cycle between modes
* CTRL-j/k          - Navigate result set
* `<Leader>fu>`     - Find

majutsushi/tagbar: Like RubyMine's `Structure` window.
-----------------

* F8    - :ToggleTagbar

mileszs/ack.vim
---------------

* cmd-shift-f   - :Ack [options] {pattern} [{directories}]

tpope/vim-vinegar
----------------

* `-`       - Hop up to the directory listing.
* `.`       - When viewing the listing, pre-populate in the `:` command
* `~`       - Go home

skwp/greplace.vim: Global replace
-----------------

* :Gsearch

airblade/vim-gitgutter: Shows git changes in left side gutter.
----------------------

* ]c    - Jump to next change
* [c    - Jump to previous change

tpope/vim-bundler
-----------------

* :Bundle
* :Bopen    - `bundle open` a gem

chrisbra/NrrwRgn
----------------

* `:NR` or <leader>nr     - Focus on a selected region

vim-multiple-cursors
--------------------

* <C-n>
