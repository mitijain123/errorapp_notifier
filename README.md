ErrorappNotifier
================
This is the notifier gem for integrating apps with ErrorApp.

When an exception occurs, ErrorappNotifier will POST the relevant data to the ErrorApp server specified in your environment.

Rails Installation
------------------
To use ErrorApp from Rails 3 application, add this to your Gemfile:

<code>gem 'errorapp_notifier'</code>

Next you need to add the following under config/initializer/errorapp.rb:

<code>ErrorappNotifier::Config.server_address = 'http://errorapp.com/'</code>
<code>ErrorappNotifier::Config.api_key = YOUR_API_KEY</code>

<code>Rails.application.config.middleware.use ErrorappNotifier::ErrorMiddleware</code>