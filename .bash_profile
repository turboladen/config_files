function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

# Git fork hack
function proml {
  local        BLUE="\[\033[0;34m\]"
  local         RED="\[\033[0;31m\]"
  local   LIGHT_RED="\[\033[1;31m\]"
  local       GREEN="\[\033[0;32m\]"
  local LIGHT_GREEN="\[\033[1;32m\]"
  local       WHITE="\[\033[1;37m\]"
  local  LIGHT_GRAY="\[\033[0;37m\]"
  case $TERM in
    xterm*)
    TITLEBAR='\[\033]0;\u@\h:\w\007\]'
    #TITLEBAR='\u@\h\${BLUE}:\W \$\[\033[00m\] '
    ;;
    *)
    TITLEBAR=""
    ;;
  esac

PS1="${TITLEBAR}\
$BLUE[$RED\u@\h:$LIGHT_GRAY\W$GREEN\$(parse_git_branch)$BLUE]\
$LIGHT_GRAY\$ "
PS2='> '
PS4='+ '
}
proml
# End Git fork hack

# Use Vi for the command line
set -o vi

# Set path for use with User gems
#export PATH=$PATH:/Users/sloveless/.gem/ruby/1.8/bin

# Set term colors
export CLICOLOR=1
export LSCOLORS=ExfxcxdxbxegedabagEcEd
export TERM=xterm-color
set meta-flag on
set input-meta on
set output-meta on
set convert-meta off

# Settings for development
#export VIM_APP_DIR=/Applications/MacPorts/
export VIM_APP_DIR=/Applications/

# Change to the dev dir
cd $HOME/Development/pelco/

if [[ -s /Users/sloveless/.rvm/scripts/rvm ]] ; then source /Users/sloveless/.rvm/scripts/rvm ; fi
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
