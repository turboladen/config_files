begin
  # load wirble
  require 'bond'
  require 'wirble'

  # start bond
  Bond.start

  # start wirble (with color)
  Wirble.init
  Wirble.colorize
rescue LoadError => err
  warn "Couldn't load Bond: #{err}"
end
