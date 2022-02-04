class UserMailer < ApplicationMailer::Base
	default from: 'notifications@example.com'
   
   def email(user)
      @user = user
      @url  = 'http://www.gmail.com'
      mail(to: @user.email, subject: 'your Result is Created')
   end
end
