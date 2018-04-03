require_relative 'task'

class Configurator < Thor
  class Git < Task
    no_commands do
      def run
        say 'Setting up your git stuff now...'

        unless options.dry_run?
          run %(git config --global user.name "Steve Loveless")
          run %(git config --global user.email "steve.loveless@gmail.com")
          run %(git config --global core.editor vim)
          run %(git config --global alias.ci 'commit')
          run %(git config --global alias.st 'status')
          run %(git config --global color.ui true)

          run %(git config --global merge.tool vimdiff)
          run %(git config --global diff.tool vimdiff)
          run %(git config --global difftool.prompt false)

          # TODO: if OSX
          run %(git config --global credential.helper osxkeychain)
        end

        say 'Done. Have you configured your SSH keys for git?'
      end
    end
  end
end
