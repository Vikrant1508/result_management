class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  
  #   en.user_mailer.post_created.subject
  
  def post_created
  	@user = params[:user]
    @greeting = "Hi"

   attachments['logo.jpeg'] = File.read('app/assets/images/logo.jpeg')
   mail to: User.last.email,
     cc: User.all.pluck(:email),
    bcc: @user.email,
    subject: "your Result is Successfully Created"
  end
end
