Windows
-------

* Create window:
    * `<prefix> c`
    * `tmux new-window`
* Goto window number:
    * `<prefix> 0-9`
    * `tmux select-window -t:[0-9]`
* Next/previous:
    * `<prefix> n`/`<prefix> p`
* Rename window:
    * `<prefix> ,`
    * `tmux rename-window`
* Enable scrolling:
    1. `<prefix> [`
    2. pg-up/pg-down

Panes
-----

Notes:

* To add a pane, split an existing one.

* Split vertical:
    * `<prefix> |`
    * `tmux split-window`
* Split horizontal
    * `<prefix> -`
    * `tmux split-window -h`
* Select pane, by direction:
    * `<prefix> HJKL`
    * `tmux select-pane -[ULDR]`
* Select pane, by numerical order:
    * `tmux select-pane -t:[0-9]`
* Toggle layouts:
    * `<prefix><space>`
