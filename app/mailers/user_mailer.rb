class UserMailer < ApplicationMailer
 
  def mail
    @user = params[:user]
    @url  = 'http://example.com/login'
    mail(from:    "vikrantchourasiya1508@gmail.com",
         to:      "vichourasiya@bestpeers.com",
         subject: 'Your Result is Created')
  end
end
