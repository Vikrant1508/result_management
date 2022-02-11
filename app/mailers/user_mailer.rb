class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.post_created.subject
  #
  def post_created
  	@user = params[:user]
    @greeting = "Hi"

   attachments['result.jpeg'] = File.read('app/assets/images/virus.jpeg')
   mail to: User.second.email,
    cc: User.all.pluck(:email),
    bcc: User.last.email,
    subject: "your Result is Successfully Created"
  end
end
