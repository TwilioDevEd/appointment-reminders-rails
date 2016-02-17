# Appointment Reminders

![godfather appointment](app/assets/images/the-godfather-1.jpg "Don't miss an appointment")

Use Twilio to create automatic appointment reminders for your businesses users.

[Read the full tutorial here](https://www.twilio.com/docs/tutorials/walkthrough/appointment-reminders/ruby/rails)!

## Running the application

Clone this repository and cd into the directory then.

```
$ bundle install
$ rake db:create db:migrate
$ export TWILIO_ACCOUNT_SID=your account sid
$ export TWILIO_AUTH_TOKEN=your auth token
$ export TWILIO_NUMBER=+16515559999
$ rake test
$ rails server
```

Then visit the application at http://localhost:3000/

## Deploy to Heroku

Hit the button!

[![Deploy](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy)

## Dependencies

This application relies heavily on these awesome third-party gems:
* twilio-ruby
* delayed_job
* twitter-bootstrap-rails

Please visit these libraries and pay your respects.
