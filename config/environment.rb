# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :address        => 'smtp.gmail.com',
  :domain         => 'domain.com:3000',
  :port           => 587,
  :user_name      => 'vichourasiya@bestpeers.com',
  :password       => 'jueokzrfydwryyao',
  :authentication => :plain,
  :enable_starttls_auto => true
}