# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :address        => 'smtp.gmail.com',
  :domain         => 'mail.google.com',
  :port           => 587,
  :user_name      => 'vikrantchourasiya1508@gmail.com',
  :password       => 'vikrant@44',
  :authentication => :plain,
  :enable_starttls_auto => true
}