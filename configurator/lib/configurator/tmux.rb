require_relative 'task'

class Configurator < Thor
  class Tmux < Task
    no_commands do
      def run
        say 'Setting up your tmux stuff now...'

        source_tmux_dir = File.join(Dir.pwd, 'tmux')
        source_tmux_file = File.join(source_tmux_dir, 'tmux.conf')
        dest_tmux_file = File.join(Dir.home, '.tmux.conf')

        if File.exist?(dest_tmux_file)
          say "'#{dest_tmux_file}' already exists. Skipping."
        else
          puts_n_run("ln #{source_tmux_file} #{dest_tmux_file}")
        end

        source_tmux_dev_file = File.join(source_tmux_dir, 'tmux_dev_env.sh')
        source_tmux_rails_file = File.join(source_tmux_dir, 'tmux_rails_env.sh')

        puts_n_run("sudo ln -s #{source_tmux_dev_file} /usr/local/bin/tmux_dev_env")
        puts_n_run("sudo ln -s #{source_tmux_rails_file} /usr/local/bin/tmux_rails_env")
      end
    end
  end
end
