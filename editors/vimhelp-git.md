-------------------------------------------------------------------------------
Git
===

tpope/vim-fugitive
------------------

* `:Gdiff`          - Diff staged version with the working tree version
* `:Gstatus`        - `$ git status`
    * `-`           - add / reset a file's changes
    * `p`           - add /reset --patch
* `:Gblame`         - show annotations
* `:Gmove`          - `$ git mv`
* `:Gremove`        - `$ git rm`
* `:Git [command]`  - Run any git command

gregsexton/gitv
---------------

Sweet repo viewer

* `:Gitv`

idanarye/vim-merginal
---------------------

`:help merginal-branch-list`

* `:Merginal`
* `q`         - Close branch list
* `R`         - Refresh branch list
* `C`/`cc`    - Checkout branch under cursor
* `A`/`aa`    - Create new branch from current branch
* `D`/`dd`    - Delete branch under cursor
* `M`/`mm`    - Merge branch under cursor into current branch
* `mf`        - ^^ using :Gmerge
* `rb`        - Rebase current branch against branch under cursor
* `gd`        - Diff against branch under cursor
* `rm`        - Rename branch under cursor
* `gl`        - View history of branch under cursor
