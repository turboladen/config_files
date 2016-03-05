require_relative 'task'

class Configurator < Thor
  class Vim < Task
    SOURCE_VIM_DIR = File.expand_path(File.join(Dir.pwd, '..', 'vim'))
    DEST_VIM_DIR = File.join(Dir.home, '.vim')

    no_commands do
      def run
        say 'Doing DRY RUN...' if options.dry_run?
        say_status :start, 'vim-plug installed?', :blue

        unless Dir.exist?(File.join(DEST_VIM_DIR, 'plugged'))
          say_status :false, 'vim-plug installed? FALSE', :red
          abort 'Install vim-plug first!'
        end

        say_status :skip, 'vim-plug installed? TRUE', :yellow

        @dry_run = options.dry_run?
        self.destination_root = DEST_VIM_DIR

        dest_vimrc = File.join(Dir.home, '.vimrc')
        source_vimrc = File.join(SOURCE_VIM_DIR, 'vimrc')
        link_vim_file(source_vimrc, dest_vimrc)

        setup_vim_file 'plugins.vim'
        setup_vim_file 'after/ftdetect/ruby.vim'
        setup_vim_file 'after/plugin/bundler.vim'
        setup_vim_file 'autoload/turboladen.vim'
        setup_vim_file 'doc/turboladen.txt'
      end

      private

      def link_vim_file(repo_file, vim_file)
        say_status :start, "Linking #{vim_file}", :blue

        status, color = if File.exist?(vim_file)
                          %i(skip yellow)
                        else
                          say "Creating link: '#{vim_file}' to '#{repo_file}'"
                          create_link(vim_file, repo_file, symbolic: false)

                          %i(done green)
                        end

        say_status status, "Linking #{vim_file}", color
      end

      def build_source_and_dest_paths(source_name, dest_name = nil)
        dest_name ||= source_name
        source = File.join(SOURCE_VIM_DIR, source_name)
        dest = File.join(DEST_VIM_DIR, dest_name)

        [source, dest]
      end

      def setup_vim_file(path)
        source_file, dest_file = build_source_and_dest_paths(path)
        ensure_dest_dir(dest_file)
        link_vim_file(source_file, dest_file)
      end
    end
  end
end
