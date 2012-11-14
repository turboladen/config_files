require 'rubygems' unless defined? Gem

libraries = %w[irbtools]

libraries += case RUBY_PLATFORM
when /mswin32|mingw32/
  %w[win32console]
when "java"
  %w[looksee]
when /darwin/
  %w[terminal-notifier]
else
  RUBY_VERSION < '1.9' ? [] : %w[irbtools-more]
end

had_to_install = false

libraries.each do |lib|
  lib_version = if lib == "irbtools" && RUBY_VERSION < '1.9'
    '1.2.2'
  else
    Gem.latest_version_for(lib).to_s
  end

  if defined? ::Bundler
    puts "Adding #{lib}-#{lib_version} to load path..."
    $:.unshift "#{ENV['GEM_HOME']}/gems/#{lib}-#{lib_version}/lib/"
  end

  installed_gems = `gem list`
  unless installed_gems =~ /#{lib} \(#{lib_version}/ ||
    $:.any? { |path| path =~ /#{lib}-#{lib_version}/ }
    warn "Couldn't load #{lib}-#{lib_version} from .irbrc. Installing..."
    `gem install #{lib} --version #{lib_version}`

    had_to_install = true
  end
end

if had_to_install
  abort <<-REASON
You had deps specified in your ~/.irbrc that weren't installed.  Those were
detected and installed for you, but you'll need to restart IRB to make use of
those.  Exiting so you can do that...
  REASON
end

require 'irbtools'

if RUBY_PLATFORM == "java"
  require 'looksee'
  module Looksee::ObjectMixin
    alias :l :ls
  end
else
require 'irbtools/configure'
  Irbtools.add_package(:more)
end

Irbtools.start

IRB.conf[:AUTO_INDENT] = true

class Object
  def interesting_methods
    (self.methods - Object.new.methods).sort
  end
end

