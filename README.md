<a href="https://www.twilio.com">
  <img src="https://static0.twilio.com/marketing/bundles/marketing/img/logos/wordmark-red.svg" alt="Twilio" width="250" />
</a>

# Appointment Reminders with Ruby on Rails and Twilio

![](https://github.com/TwilioDevEd/appointment-reminders-rails/workflows/Ruby/badge.svg)

> This template is part of Twilio CodeExchange. If you encounter any issues with this code, please open an issue at [github.com/twilio-labs/code-exchange/issues](https://github.com/twilio-labs/code-exchange/issues).

## About

Make sure your customers show up for their scheduled appointments with automated
reminders. Deliver reminders via SMS text messages that don't get ignored like
your e-mails.

[Read the full tutorial here!](https://www.twilio.com/docs/tutorials/walkthrough/appointment-reminders/ruby/rails)

Implementations in other languages:

| .NET | Java | Python (Django) | Python (Flask) | PHP | Ruby | Node |
| :--- | :--- | :-----          | :--            | :---| :--- | :--  |
| [Done](https://github.com/TwilioDevEd/appointment-reminders-csharp)  | [Done](https://github.com/TwilioDevEd/appointment-reminders-java)  | [Done](https://github.com/TwilioDevEd/appointment-reminders-django)  | [Done](https://github.com/TwilioDevEd/appointment-reminders-flask) | [Done](https://github.com/TwilioDevEd/appointment-reminders-laravel) | [Done](https://github.com/TwilioDevEd/appointment-reminders-rails) | TBD |

## Set up

### Requirements
- [Ruby](https://www.ruby-lang.org/) **2.6.x** version.
- [Sqlite](https://www.sqlite.org/index.html).
- [Node.js](https://nodejs.org/en/) **10.x** or **12.x** version.

### Twilio Account Settings

This application should give you a ready-made starting point for writing your own application.
Before we begin, we need to collect all the config values we need to run the application:

| Config Value | Description |
| :----------- | :---------- |
| TWILIO_ACCOUNT_SID  | Your primary Twilio account identifier - find this [in the Console](https://www.twilio.com/console). |
| TWILIO_AUTH_TOKEN   | Used to authenticate - [just like the above, you'll find this here](https://www.twilio.com/console). |
| TWILIO_NUMBER | A Twilio phone number in [E.164 format](https://en.wikipedia.org/wiki/E.164) - you can [get one here](https://www.twilio.com/console/phone-numbers/incoming) |

### Local development

This project is built using [Ruby on Rails](http://rubyonrails.org/) Framework.

1. First clone this repository and `cd` into it.

   ```bash
   git clone git@github.com:TwilioDevEd/appointment-reminders-rails.git
   cd appointment-reminders-rails
   ```

2. Install the dependencies, the following command will install gems and Node dependencies.

   ```bash
   make install
   ```

3. Copy the `.env.example` file to `.env`, and edit it including your credentials
   for the Twilio API (found at https://www.twilio.com/console/account/settings).
   You will also need a [Twilio Number](https://www.twilio.com/console/phone-numbers/incoming).

   ```bash
   cp .env.example .env
   ```
   See [Twilio Account Settings](#twilio-account-settings) to locate the necessary environment variables.

4. Create the database and run migrations.

   Make sure you have installed [PostgreSQL](http://www.postgresql.org/). If on
   a Mac, I recommend [Postgres.app](http://postgresapp.com).

   ```bash
   make database
   ```

At this point you are ready to run the code:

5. First start the delayed jobs deamon, in the root execute the following command:

   ```bash
   ./bin/delayed_job start
   ```

   You can `tail` the log for this process:

   ```bash
   tail -f log/delayed_job.log
   ```

6. Then start the development server:

   ```bash
   make serve
   ```

7. Check it out at [http://localhost:3000](http://localhost:3000).

### Docker

If you have [Docker](https://www.docker.com/) already installed on your machine, you can use our `docker-compose.yml` to setup your project.

1. Make sure you have the project cloned.
2. Setup the `.env` file as outlined in the [Local Development](#local-development) steps.
3. Run `docker-compose up`.

### Test

You can run the tests locally by typing:
   ```bash
   $ bundle exec rails test
   ```

### Cloud deployment

Additionally to trying out this application locally, you can deploy it to a variety of host services. Here is a small selection of them.

Please be aware that some of these might charge you for the usage or might make the source code for this application visible to the public. When in doubt research the respective hosting service first.

| Service                           |                                                                                                                                                                                                                           |
| :-------------------------------- | :------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| [Heroku](https://www.heroku.com/) | [![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy)                                                                                                                                       |

## Resources

- The CodeExchange repository can be found [here](https://github.com/twilio-labs/code-exchange/).

## Contributing

This template is open source and welcomes contributions. All contributions are subject to our [Code of Conduct](https://github.com/twilio-labs/.github/blob/master/CODE_OF_CONDUCT.md).

[Visit the project on GitHub](https://github.com/twilio-labs/sample-template-nodejs)

## License

[MIT](http://www.opensource.org/licenses/mit-license.html)

## Disclaimer

No warranty expressed or implied. Software is as is.

[twilio]: https://www.twilio.com
