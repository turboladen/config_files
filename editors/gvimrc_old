" -----------------------------------------------------------------------------
" Goodies from $VIMRUNTIME/vimrc_example.vim
" -----------------------------------------------------------------------------
" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible
set nobackup
set nowritebackup

" -----------------------------------------------------------------------------
" Keyboard behavior
" -----------------------------------------------------------------------------
set backspace=indent,eol,start  " allow backspacing over everything in insert mode
set ruler		    " show the cursor position all the time
set showcmd		    " display incomplete commands
set incsearch		" do incremental searching
" Set tab keys to 4 spaces
set tabstop=6       " Setting to 6 so it's obvious when tabs are used
" set shiftwidth=4
set shiftwidth=2    " Use 2 spaces for Ruby
set expandtab       " Use spaces instead of tabs for Ruby
set softtabstop=2   " For Ruby

" -----------------------------------------------------------------------------
" Look and Feel
" -----------------------------------------------------------------------------
syntax on
set history=50      " keep 50 lines of command line history
set anti            " Antialias font
set ignorecase      " Search regardless of case
set scs             " Smart search (override 'ic' when pattern has uppers
set showmatch       " Show the matching bracket for the last ')'?
set background=dark " set background
"colorscheme ir_black
set lines=60        " Set window size
set number
set mousehide       " Hide mouse pointer while typing
let c_comment_strings=1 " Highlight strings inside C comments

" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 80 characters.
  autocmd FileType text setlocal textwidth=80

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif
  augroup END
else
  set autoindent		" always set autoindenting on
endif " has("autocmd")

" -----------------------------------------------------------------------------
" OS specific options
" -----------------------------------------------------------------------------
" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if has("gui_macvim")
  " Fullscreen options (MacVim only), resized window when chagned to
  " fullscreen
  set fuoptions=maxvert,maxhorz
  set stal=2            " turn on tabs by default
  set guioptions-=T     " remove toolbar
elseif has("gui_gtk2")
  set guifont=Monaco
elseif has("x11")
elseif has("gui_win32")
elseif has("gui_running")
  syntax on
  set hlsearch
  set mouse=a     " Enable use of mouse
end
if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set backup		" keep a backup file
endif

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis

" -----------------------------------------------------------------------------
" Color scheme
" -----------------------------------------------------------------------------
" highlight Normal guibg=black guifg=#66CD00 "Set Background
" highlight Cursor guibg=grey90 "Change cursor
" highlight ModeMsg gui=bold guifg=Green guibg=grey " Set( --INSERT--) to green

