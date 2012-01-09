source ~/.bash_aliases

#-------------------------------------------------------------------
# Determine OS
#-------------------------------------------------------------------
platform='unknown'
unamestr=`uname`
if [[ "$unamestr" == 'Linux' ]]; then
	platform='linux'
elif [[ "$unamestr" == 'Darwin' ]]; then
	platform='darwin'
fi

#-------------------------------------------------------------------
# OSX
#-------------------------------------------------------------------
if [[ $platform = 'darwin' ]]; then
	#-------------------------------------------------------------------
	# Settings for development
	#-------------------------------------------------------------------
	export VIM_APP_DIR=/Applications/

	#-------------------------------------------------------------------
	# Set PATH to use homebrew first
	#-------------------------------------------------------------------
	export PATH=/usr/local/bin:/usr/local/share/python:$PATH

	#-------------------------------------------------------------------
	# Source in `git` auto-completions
	#-------------------------------------------------------------------
	source /usr/local/etc/bash_completion.d/git-completion.bash

	#-------------------------------------------------------------------
	# Source in homebrew completions
	#-------------------------------------------------------------------
	source `brew --prefix`/Library/Contributions/brew_bash_completion.sh
fi

#-------------------------------------------------------------------
# Git fork hack
#-------------------------------------------------------------------
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

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

#-------------------------------------------------------------------
# Use Vi for the command line
#-------------------------------------------------------------------
set -o vi

#-------------------------------------------------------------------
# Set term colors
#-------------------------------------------------------------------
export CLICOLOR=1
export LSCOLORS=ExfxcxdxbxegedabagEcEd
export TERM=xterm-color
set meta-flag on
set input-meta on
set output-meta on
set convert-meta off

#-------------------------------------------------------------------
# Change to the dev dir
#-------------------------------------------------------------------
#cd $HOME/Development/pelco/

# Set Subversion editor
svninstalled=`type -P svn`
if [[ -n $svninstalled ]]; then
	export SVN_EDITOR=vim
fi

#-------------------------------------------------------------------
# rvm
# Make this work with OS X Lion... for now...
#-------------------------------------------------------------------
if [[ `uname -v` =~ "Darwin Kernel Version 11" ]] ; then
  export CC=/usr/bin/gcc-4.2
fi
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
