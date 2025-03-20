# frozen_string_literal: true

Devise.setup do |config|
  # Secret key for generating tokens (e.g., confirmation, reset passwords)
  # config.secret_key = 'your_secret_key'

  # Mailer Configuration
  config.mailer_sender = 'please-change-me-at-config-initializers-devise@example.com'
  # config.mailer = 'Devise::Mailer'
  # config.parent_mailer = 'ActionMailer::Base'

  # ORM configuration (ActiveRecord by default)
  require 'devise/orm/active_record'

  # Authentication settings (default uses :email)
  config.authentication_keys = [:email]
  config.case_insensitive_keys = [:email]
  config.strip_whitespace_keys = [:email]

  # Session management
  config.skip_session_storage = [:http_auth]
  
  # Password settings
  config.password_length = 6..128
  config.reset_password_within = 6.hours
  config.stretches = Rails.env.test? ? 1 : 12

  # Account Locking
  config.lock_strategy = :failed_attempts
  config.maximum_attempts = 20

  # Timeoutable settings
  # config.timeout_in = 30.minutes

  # Rememberable settings
  config.expire_all_remember_me_on_sign_out = true
  # config.remember_for = 2.weeks

  # OmniAuth for external logins
  # config.omniauth :github, 'APP_ID', 'APP_SECRET'

  # Hotwire/Turbo settings for error handling
  config.responder.error_status = :unprocessable_entity
  config.responder.redirect_status = :see_other

  # Reconfirmable settings
  config.reconfirmable = true

  # Optional: Automatically sign in after password reset
  # config.sign_in_after_reset_password = true
end
