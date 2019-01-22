<a href="https://www.twilio.com">
  <img src="https://static0.twilio.com/marketing/bundles/marketing/img/logos/wordmark-red.svg" alt="Twilio" width="250" />
</a>

# Appointment Reminders with Ruby on Rails and Twilio

[![Build Status](https://travis-ci.org/TwilioDevEd/appointment-reminders-rails.svg?branch=master)](https://travis-ci.org/TwilioDevEd/appointment-reminders-rails)

Make sure your customers show up for their scheduled appointments with automated
reminders. Deliver reminders via SMS text messages that don't get ignored like
your e-mails.

[Read the full tutorial here!](https://www.twilio.com/docs/tutorials/walkthrough/appointment-reminders/ruby/rails)

## Local development

This project is built using [Ruby on Rails](http://rubyonrails.org/) Framework.

1. First clone this repository and `cd` into it.

   ```bash
   git clone git@github.com:TwilioDevEd/appointment-reminders-rails.git
   cd appointment-reminders-rails
   ```

1. Install the dependencies.

   ```bash
   $ bundle install
   ```

1. Copy the `.env.example` file to `.env`, and edit it including your credentials
   for the Twilio API (found at https://www.twilio.com/console/account/settings).
   You will also need a [Twilio Number](https://www.twilio.com/console/phone-numbers/incoming).

   Run `source .env` to export the environment variables.

1. Create the database and run migrations.

   Make sure you have installed [PostgreSQL](http://www.postgresql.org/). If on
   a Mac, I recommend [Postgres.app](http://postgresapp.com).

   ```bash
   $ bundle exec rake db:setup
   ```

1. Make sure the tests succeed. 

   ```bash
   $ bundle exec rake
   ```

1. Start delayed jobs.

   ```bash
   $ ./bin/delayed_job start
   ```

1. Start the development server.

   ```bash
   $ bundle exec rails s
   ```

1. Check it out at [http://localhost:3000](http://localhost:3000).


## Meta

* No warranty expressed or implied. Software is as is. Diggity.
* [MIT License](http://www.opensource.org/licenses/mit-license.html)
* Lovingly crafted by Twilio Developer Education.
