notes.md

<!--  ################################### Generating the bootstrap layouts -->
rails new appointment-reminders-rails

add the following
```
# Use Twilio
gem 'twilio-ruby'

# Use bootstrap themes
gem 'twitter-bootstrap-rails', :git => 'git://github.com/seyhunak/twitter-bootstrap-rails.git'
```

run `bundle install`

$ rails g bootstrap:install static

$ bin/rails generate scaffold Appointment name:string phone_number:string time:datetime

rake db:migrate

rails g bootstrap:themed Appointments

rails server

<!--  ###################################  Install delayed_job -->

in Gemfile
```
# Use delayed job for running background jobs
gem 'delayed_job_active_record'
```

$ rails g delayed_job:active_record

$ rake db:migrate

<!-- Run the jobs -->
$ bin/delayed_job start

on Heroku:
heroku ps:scale worker=1


<!-- ################################### Change Time Zone -->
$ rake time:zones:local
Add this to your config/application.rb file

`config.time_zone = 'Pacific Time (US & Canada)'`

