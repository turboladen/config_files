require 'thor'

class Configurator < Thor
  # Base level task for namespaced tasks.
  class Task < Thor
    include Thor::Actions

    class_option :dry_run, type: :boolean, default: false

    no_commands do
      private

      def ensure_dest_dir(dest)
        dest_dir = File.dirname(dest)

        say_status :start, "#{dest_dir} exists?", :blue
        if Dir.exist?(dest_dir)
          say_status :skip, "#{dest_dir} exists? TRUE", :yellow
        else
          say_status :false, "#{dest_dir} exists? FALSE", :red
          say_status :start, "Making #{dest_dir}", :blue
          FileUtils.mkdir_p(dest_dir)
          say_status :done, "Making #{dest_dir}"
        end
      end

      def puts_n_run(cmd)
        say "Running command: #{cmd}"
        `#{cmd}` unless @dry_run
      end
    end
  end
end
