class UserMailer < ApplicationMailer
  default from: 'benoitlardinois@gmail.com'
  
  def welcome_email(user)
    @user = user
    
    @url = 'http://monsite.com/login'
    
    mail(to: @user.email, subject: 'Bienvenue chez nous!')
  end
end
