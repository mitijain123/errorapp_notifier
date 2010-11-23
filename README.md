= ErrorappNotifier

This is the notifier gem for integrating apps with ErrorApp.

When an exception occurs, ErrorappNotifier will POST the relevant data to the ErrorApp server specified in your environment.

== Rails Installation

To use ErrorApp from Rails 3 application, add this to your Gemfile:

gem 'errorapp_notifier'

Next you need to add the following under config/initializer/errorapp.rb:

ErrorappNotifier::Config.server_address = 'http://errorapp.com/'
ErrorappNotifier::Config.api_key = YOUR_API_KEY

Rails.application.config.middleware.use ErrorappNotifier::ErrorMiddleware