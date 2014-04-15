alias rdbm='bin/rake db:migrate db:test:clone'
alias rdbmt='bin/rake db:migrate RAILS_ENV=test'
alias rdbr='bin/rake db:rollback'
alias spec_all='bin/spring rspec spec'

spec_model() { bin/spring rspec spec/models/"$1"_spec.rb }
spec_controller() { bin/spring rspec spec/controllers/"$1"_controller_spec.rb }
spec_views() { bin/spring rspec spec/views/"$1"/*_spec.rb }

alias devlog='tail -f log/development.log'
alias testlog='tail -f log/test.log'
alias prodlog='tail -f log/production.log'

#alias rr='bin/rake routes'
rr() { bin/rake routes | grep "$1" }
