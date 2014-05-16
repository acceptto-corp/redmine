# Settings specified here will take precedence over those in config/application.rb
RedmineApp::Application.configure do
  # In the development environment your application's code is reloaded on
  # every request.  This slows down response time but is perfect for development
  # since you don't have to restart the webserver when you make code changes.
  config.cache_classes     = false

  # Log error messages when you accidentally call methods on nil.
  config.whiny_nils        = true

  # Show full error reports and disable caching
  #config.action_controller.consider_all_requests_local = true
  config.action_controller.perform_caching             = false

  # Don't care if the mailer can't send
  config.action_mailer.raise_delivery_errors = false

  config.active_support.deprecation = [:stderr, :log]
  
  config.mfa_app_id = 'abc9e0cbabf113d1ecdf9b6908a901123e1b7b272c1ca292497e4fcdf99df21d7'
  config.mfa_callback_url = 'http://localhost:3000/mfa/callback'
  config.mfa_site = 'http://0.0.0.0:3002'
  config.mfa_secret = '86b6b653b42af4222c0f605c92ba856c73fed60b9f10af6f941ea31c12fa9a57'
  config.faye_server = 'http://0.0.0.0:9292/faye'
  config.authorize_link = 'http://0.0.0.0:3002/mfa/email?uid=abc9e0cbabf113d1ecdf9b6908a901123e1b7b272c1ca292497e4fcdf99df21d7'
end
