if RUBY_PLATFORM =~ /mswin32|mingw32/
  require 'win32console'
end

requires = %w(awesome_print wirble bond looksee)

had_to_install = false

requires.each do |lib|
  begin
    if defined? ::Bundler
      $:.unshift "#{ENV['GEM_HOME']}/gems/#{lib}-#{Gem.latest_version_for(lib)}/lib/"
    end

    require lib
  rescue LoadError => err
    warn "Couldn't load #{lib} from .irbrc: #{err}; Installing..."
    `gem install #{lib}`
    had_to_install = true
  end
end

if had_to_install
  puts <<-MSG
You had deps specified in your ~/.irbrc that weren't installed.  Those were
detected and installed for you, but you'll need to restart IRB to make use of
those.  Exiting so you can do that...
  MSG

  exit 0
end

# start wirble (with color)
Wirble.init
Wirble.colorize

# start bond
Bond.start

IRB.conf[:AUTO_INDENT] = true

class Object
  def interesting_methods
    (self.methods - Object.new.methods).sort
  end
end

