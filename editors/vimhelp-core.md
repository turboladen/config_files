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


Buffers & Windows
-----------------

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

### [kien/ctrlp.vim](https://github.com/kien/ctrlp.vim) ###

* `:CtrlPBuffer`    - Find in buffer mode
* `:CtrlPMRU`       - Find in MRU mode
* `:CtrlPMixed`     - Find in Files, Buffers and MRU files at the same time
* `:CtrlPTag`       - Find tag
* `<C-r>`           - Switch to regexp mode
* `<C-f>`/`<C-b>`   - Cycle between modes
* `<C-j>`/`<C-k>`   - Navigate result set

### [tacahiroy/ctrlp-funky](https://github.com/tacahiroy/ctrlp-funky) ###

* `<Leader>fu>`     - Find tag in file

Folds
-----

* `zo`/`zc`/`za`    = Open/close/toggle fold
* `zO`/`zC`/`zA`    = Open/close/toggle fold recursively
* `zr`/`zm`         = Reduce/more folds
* `zR`/`zM`         = Reduce/more folds recursively
* `zv`              = Expand folds to reveal cursor

