require_relative 'task'

class Configurator < Thor
  class Ruby < Task
    no_commands do
      def run
        say 'Setting up your ruby stuff now...'
        [
          'gem-ctags',      # depends on `brew install ctags`
          'hairballs',
          'haml-lint',      # for nvim
          'mdl',            # markdown linter for vim
          'powder',
          'pre-commit',
          'rubocop',
          'scss_lint',      # for nvim
          'yard'
        ].each do |gem_name|
          say "Installing #{gem_name}..."
          Gem.install(gem_name)
        end
      end
    end
  end
end
