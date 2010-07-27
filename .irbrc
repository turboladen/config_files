require 'rubygems'
require 'pp'

if RUBY_PLATFORM =~ /mswin32|mingw32/
  require 'win32console'
end

begin
  # load wirble
  require 'wirble'

  # start wirble (with color)
  Wirble.init
  Wirble.colorize
rescue LoadError => err
  warn "Couldn't load Wirble from .irbrc: #{err}"
end

begin
  # load Bon 
  require 'bond'

  # start bond
  Bond.start
rescue LoadError => err
  warn "Couldn't load Bond from .irbrc: #{err}"
end
