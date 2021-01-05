# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  port: 587,
  address: 'smtp.gmail.com',
  user_name: ENV['SMTP_USER_NAME'],
  password: ENV['SMTP_USER_PASSWORD'],
  domain: 'gmail.com',
  authentication: :plain,
  enable_starttls_auto: true
  }
