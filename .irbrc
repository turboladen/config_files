IRB.conf[:AUTO_INDENT] = true

@libraries = %w[irb/completion awesome_print wirble looksee]

@libraries += case RUBY_PLATFORM
              when /mswin32|mingw32/
                %w[win32console]
              when /darwin/
                #%w[terminal-notifier]
                []
              end

def do_bundler
  if defined?(::Bundler)
    all_global_gem_paths = Dir.glob("#{Gem.dir}/gems/*")

    all_global_gem_paths.each do |p|
      gem_path = "#{p}/lib"
      $:.unshift(gem_path)
    end
  end
end

def undo_bundler
  if defined?(::Bundler)
    all_global_gem_paths = Dir.glob("#{Gem.dir}/gems/*")

    all_global_gem_paths.each do |p|
      gem_path = "#{p}/lib"
      $:.delete(gem_path)
    end
  end
end

# load .irbc_rails in rails environments
if ENV['RAILS_ENV'] || defined? Rails
  # Add all gems in the global gemset to the $LOAD_PATH so they can be used even
  # in places like 'rails console'.
  do_bundler

  # hirb: some nice stuff for Rails
  # @libraries << 'hirb'

  # set a nice prompt
  rails_root = File.basename(Dir.pwd)
  IRB.conf[:PROMPT] ||= {}
  IRB.conf[:PROMPT][:RAILS] = {
    :PROMPT_I => "#{rails_root}> ", # normal prompt
    :PROMPT_S => "#{rails_root}* ", # prompt when continuing a string
    :PROMPT_C => "#{rails_root}? ", # prompt when continuing a statement
    :RETURN   => "=> %s\n"          # prefixes output
  }
  IRB.conf[:PROMPT_MODE] = :RAILS
else
  IRB.conf[:PROMPT][:MY_PROMPT] = { # name of prompt mode
    :PROMPT_I => "%03n:%i> ",
    :PROMPT_S => "%03n:%i%l ",
    :PROMPT_C => "%03n:%i*> ",
    :PROMPT_N => ".. ",
    :RETURN => "=> %s\n"
  }

  IRB.conf[:PROMPT_MODE] = :MY_PROMPT
  IRB.conf[:AUTO_INDENT] = true
end

@libraries.each do |lib|
  retry_count = 0

  begin
    break if retry_count == 2
    puts "Requiring library: #{lib}"
    require lib
  rescue LoadError
    puts "#{lib} not installed; installing now..."
    Gem.install lib
    retry_count += 1
    retry
  end
end

class Object
  def interesting_methods
    case self.class
    when Class
      self.public_methods.sort - Object.public_methods
    when Module
      self.public_methods.sort - Module.public_methods
    else
      self.public_methods.sort - Object.new.public_methods
    end
  end
end

if defined? Wirble
  Wirble.init
  Wirble.colorize
end

if defined? AwesomePrint
  AwesomePrint.irb!

  IRB::Irb.class_eval do
    def output_value
      require 'json'
      is_json = JSON.parse(@context.last_value) rescue nil

      if is_json
       puts JSON.pretty_generate(JSON(@context.last_value)).blue
      else
        ap @context.last_value
      end
    end
  end
end

if defined? Hirb
  Hirb.enable
  Hirb::Formatter.dynamic_config['ActiveRecord::Base']
end


#if ENV['RAILS_ENV'] || defined? Rails
#  undo_bundler
#end
