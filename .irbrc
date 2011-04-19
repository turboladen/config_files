if RUBY_PLATFORM =~ /mswin32|mingw32/
  require 'win32console'
end

requires = %w(rubygems pp ap wirble bond looksee)

requires.each do |lib|
  begin
    require lib
  rescue LoadError => err
    warn "Couldn't load #{lib} from .irbrc: #{err}"
  end
end

# start wirble (with color)
Wirble.init
Wirble.colorize

# start bond
Bond.start

