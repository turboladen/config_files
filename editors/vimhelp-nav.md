Navigation
==========

Spelling
--------

http://vimcasts.org/episodes/spell-checking/

* `:set [no]spell`  - Turn on spell checker
* `]s`/`[s`         - Navigate forward/backward to misspellings
* `z=`              - list spelling suggestions
* `zg`              - Mark highlighted word as a "good" word
* `zug`             - Undo marking highlighted word as a "good" word
* `zw`              - Mark highlighted word as "wrong" (misspelled)
* `zuw`             - Undo marking highlighted word as "wrong" (misspelled)
* `:runtime spell/cleanadd.vim`   - Clean up spelling file


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
* <leader>bc    - Close the buffer but keep the window
* CTRL-^        - Open the alternate (usually last) buffer. Works with a count
                  modifier.

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

Explorer Mode + vim-vinegar
---------------------------

* i   - Toggle view mode
* d   - Create a new directory
* %   - Create and open a new file
* D   - Delete a directory or file
* R   - Rename a file
* o   - Open file in a horizontal split
* v   - Open file in a vertical split

### tpope/vim-vinegar

* `-`       - Hop up to the directory listing.
* `.`       - When viewing the listing, pre-populate in the `:` command
* `~`       - Go home


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

rcking/ag.vim
-------------

* \

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

lucapette/vim-ruby-doc
----------------------

* RB      - Search rubydocs.info for Ruby
* RS      - Search relishapp.com for RSpec
* RR      - Search api.rubyonrails.org for Rails

tommcdo/vim-exchange
--------------------

Vimcast: http://vimcasts.org/episodes/swapping-two-regions-of-text-with-exchange-vim/

* `cx{motion}`    - Select first text object for exchanging. Repeat (or .) on
                    on second text to exchange with.
* `cxx{motion}`   - Like `cx` but for the current line.
* `X{motion}`     - Like `cx` but for visual mode.
* `cxc`           - Clearn any exchange `{motion}`.
