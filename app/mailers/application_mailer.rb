class ApplicationMailer < ActionMailer::Base
  default from: 'vichourasiya@bestpeers.com'
  layout 'mailer'

  def send_it(email)
  @email = email

  mail(
    from: email.user.email,
    to: email.receiver,
    subject: email.subject
  )
  end
end
