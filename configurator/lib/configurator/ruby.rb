require_relative 'task'

class Configurator < Thor
  class Ruby < Task
    no_commands do
      def run
        say 'Setting up your ruby stuff now...'
        [
          'fasterer',
          'foreman',
          'gem-ctags',      # depends on `brew install ctags`
          'hairballs',
          'haml-lint',      # for neovim
          'mdl',            # markdown linter for vim
          'neovim',         # for neovim
          'pre-commit',
          'rubocop',
          'scss_lint',      # for neovim
          'subcontractor',
          'yard'
        ].each do |gem_name|
          say "Installing #{gem_name}..."
          Gem.install(gem_name)
        end
      end
    end
  end
end
