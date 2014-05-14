# Settings specified here will take precedence over those in config/application.rb
RedmineApp::Application.configure do
  # The production environment is meant for finished, "live" apps.
  # Code is not reloaded between requests
  config.cache_classes = true

  #####
  # Customize the default logger (http://ruby-doc.org/core/classes/Logger.html)
  #
  # Use a different logger for distributed setups
  # config.logger        = SyslogLogger.new
  #
  # Rotate logs bigger than 1MB, keeps no more than 7 rotated logs around.
  # When setting a new Logger, make sure to set it's log level too.
  #
  # config.logger = Logger.new(config.log_path, 7, 1048576)
  # config.logger.level = Logger::INFO

  # Full error reports are disabled and caching is turned on
  config.action_controller.perform_caching = true

  # Enable serving of images, stylesheets, and javascripts from an asset server
  # config.action_controller.asset_host                  = "http://assets.example.com"

  # Disable delivery errors if you bad email addresses should just be ignored
  config.action_mailer.raise_delivery_errors = false

  # No email in production log
  config.action_mailer.logger = nil

  config.active_support.deprecation = :log
  
  config.mfa_app_id = 'abc9e0cbabf113d1ecdf9b6908a901123e1b7b272c1ca292497e4fcdf99df21d7'
  config.mfa_callback_url = 'http://rocky-island-1327.herokuapp.com/my/mfa/callback'
  config.mfa_site = 'http://mfa.acceptto.com'
  config.mfa_secret = '86b6b653b42af4222c0f605c92ba856c73fed60b9f10af6f941ea31c12fa9a57'
  config.faye_server = 'https://faye.acceptto.net/faye'
  config.authorize_link = 'http://mfa.acceptto.com/mfa/email?uid=abc9e0cbabf113d1ecdf9b6908a901123e1b7b272c1ca292497e4fcdf99df21d7'
end
