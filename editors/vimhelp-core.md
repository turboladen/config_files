Core VIM Help
=============

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

* `<C-w>[direction]`  - Switch buffers
* `<C-w>s`            - Split horizontally
* `<C-w>v`            - Split vertically
* `:new {file}`       - New horizontally split window, empty file
* `:vnew {file}`      - New vertically split window, empty file
* `:hide`             - Quit the current window, but don't close the buffer
* `<C-w>p`            - Go to previous window
* `<C-w>r/R`          - Rotate windows
* `<C-w>x`            - Exchange windows, this with the next one
* `<C-w>HJKL`         - Send window to left/top/bottom/right
* `<C-w>-/+`          - Make window smaller/bigger
* `<C-w>=`            - Make windows the same size
* `<Leader>bc`        - Close the buffer but keep the window
* `<C-^>`             - Open the alternate (usually last) buffer. Works with a
                        count modifier.

Tags
----

* `<Leader>ct`  - Rebuild tags
* `<C-]>`       - Use word under cursor as tag to search for
* `<C-t>`       - Go back to where you came from after `CTRL-]`
* `:ts`         - List tags that match the last search
* `:tn`/`:tp`   - Go to next/previous matching tag

### kien/ctrlp.vim, tacahiroy/ctrlp-funky ###

* `:CtrlPBuffer`    - Find in buffer mode
* `:CtrlPMRU`       - Find in MRU mode
* `:CtrlPMixed`     - Find in Files, Buffers and MRU files at the same time
* `:CtrlPTag`       - Find tag
* `<C-r>`           - Switch to regexp mode
* `<C-f>`/`<C-b>`   - Cycle between modes
* `<C-j>`/`<C-k>`   - Navigate result set
* `<Leader>fu>`     - Find tag in file

### majutsushi/tagbar ###

Like RubyMine's `Structure` window.

* `F8`    - :ToggleTagbar

Folds
-----

* `zo`/`zc`/`za`    = Open/close/toggle fold
* `zO`/`zC`/`zA`    = Open/close/toggle fold recursively
* `zr`/`zm`         = Reduce/more folds
* `zR`/`zM`         = Reduce/more folds recursively
* `zv`              = Expand folds to reveal cursor

Explorer Mode
-------------

* `i`   - Toggle view mode
* `d`   - Create a new directory
* `%`   - Create and open a new file
* `D`   - Delete a directory or file
* `R`   - Rename a file
* `o`   - Open file in a horizontal split
* `v`   - Open file in a vertical split

### tpope/vim-vinegar ###

* `-`       - Hop up to the directory listing.
* `.`       - When viewing the listing, pre-populate in the `:` command
* `~`       - Go home

Searching, Replacing
--------------------

### mileszs/ack.vim ###

Format: `:Ack [options] {pattern} [{directories}]`

* `<Leader>/`   - `:Ack<Space>`

### rcking/ag.vim ###

Format: `:Ag [options] {pattern} [{directory}]`

* `\`       - :Ag<SPACE>
* `K`       - Search for word under cursor

Once the quickfix window is open:

* `e`       - open file and close the quickfix window
* `o`       - open (same as enter)
* `go`      - preview file (open but maintain focus on ag.vim results)
* `t`/`T`   - open in new tab (/silently)
* `h`/`H`   - open in horizontal split (/silently)
* `v`/`gv`  - open in vertical split (/silently)
* `q`       - close the quickfix window

### skwp/greplace.vim ###

Global replace

* `:Gsearch`

