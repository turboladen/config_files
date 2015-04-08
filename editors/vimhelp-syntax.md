Syntax, Code Manipulation
=========================

Any Language
------------

### tpope/vim-commentary ###

* `gcc` - Comment out a line (takes a count)
* `gc`  - Comment out target of a motion (ex. gcap to comment out a paragraph)

### tpope/vim-surround ###

* `cs[from][to]`      - With cursor in a string, change [from] to [to] (ex `cs"'`)
* `ds[delimiter]`     - Remove [delimiters] from string.
* `ys{motion}[char]`  - (Insert) Surround `{motion}` with `[char]`
* `S[char]`           - (Visual) Surround selected with `[char]`

### terryma/vim-multiple-cursors ###

* `<C-n>`         - Press on top of a word to highlight that word. Press again
                    to jump to the next instance of that word. Once all are
                    selected, use normal or visual vim commands to alter.
* `<C-p>`         - Jump back to previous highlighted word.
* `<C-x>`         - Skip the currently highlighted word.

### tommcdo/vim-exchange ###

Vimcast: http://vimcasts.org/episodes/swapping-two-regions-of-text-with-exchange-vim/

* `cx{motion}`    - Select first text object for exchanging. Repeat (or .) on
                    on second text to exchange with.
* `cxx{motion}`   - Like `cx` but for the current line.
* `X{motion}`     - Like `cx` but for visual mode.
* `cxc`           - Clearn any exchange `{motion}`.

### AndrewRadev/splitjoin.vim ###

* gS    - split a one-liner into multiple lines
* gJ    - (with cursor on first line of a block) to join a block

Ruby
----

### rorymckinley/vim-rubyhash ###

* `rr` - Convert all keys to symbols
* `rt` - Convert all keys to strings
* `rr` - Convert all keys to Ruby 1.9 format

### jgdavey/vim-blockle.git ###

* `<Leader>b`   - Toggle Ruby block style

Markdown
--------

### gabrieleana/vim-markdown ###

* `[[`          - Goto previous H* section
* `]]`          - Goto next H* section
* `<Leader>e`   - Open a code section in a new buffer, using syntax highlighting
* `<Leader>ft`  - Format the current table (Tabular)

