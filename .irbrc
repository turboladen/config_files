if RUBY_PLATFORM =~ /mswin32|mingw32/
  require 'win32console'
end

requires = %w(awesome_print wirble bond looksee)

requires.each do |lib|
  begin
    if defined? ::Bundler
      $:.unshift "#{ENV['GEM_HOME']}/gems/#{lib}-#{Gem.latest_version_for(lib)}/lib/"
    end

    require lib
  rescue LoadError => err
    warn "Couldn't load #{lib} from .irbrc: #{err}; Installing..."
    `gem install #{lib}`
  end
end

# start wirble (with color)
Wirble.init
Wirble.colorize

# start bond
Bond.start

