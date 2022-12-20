# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '~> 2.6'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.1.4'
# Use sqlite3 as the database for Active Record
gem 'sqlite3', '~> 1.4'
# Use Puma as the app server
gem 'puma', '~> 5.4'
# Use SCSS for stylesheets
gem 'sass-rails', '>= 6.0.0'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '~> 5.4'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.11'

# Reduces boot times through caching; required in config/boot.rb

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 5.0'

gem 'rails-controller-testing'

# Use jquery as the JavaScript library
gem 'jquery-rails'

gem 'bootstrap', '~> 5.0', '>= 5.0.1'
# Use bootstrap themes
gem 'twitter-bootstrap-rails', :git => 'git://github.com/seyhunak/twitter-bootstrap-rails.git'

# Use delayed job for running background jobs
gem 'delayed_job_active_record'

# Need daemons to start delayed_job
gem 'daemons'

gem 'bootsnap', '>= 1.4.2', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: %i[mri mingw x64_mingw]

  gem 'dotenv-rails', '~> 2.7'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'listen', '>= 3.0.5', '< 3.7'
  gem 'web-console', '>= 3.3.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'

  gem 'overcommit', '~> 0.58.0', require: false
  gem 'rubocop', '~> 1.18.4', require: false
  gem 'rubocop-rails', '~> 2.11', require: false
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

gem 'twilio-ruby', '~> 5.57'
