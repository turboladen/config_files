#------------------------------------------------------------------------------
# Make chruby rubies available when using from non-interactive sessions (ex.
# from vim)
#
# `brew install chruby ruby-install`
#------------------------------------------------------------------------------
if [[ -f /usr/local/opt/chruby/share/chruby/chruby.sh ]]; then
  source /usr/local/opt/chruby/share/chruby/chruby.sh
  chruby "2.4.1"
  source /usr/local/opt/chruby/share/chruby/auto.sh
else
  echo "chruby not found."
fi
