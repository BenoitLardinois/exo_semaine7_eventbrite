class UserMailer < ApplicationMailer
  default from: 'benoitlardinois@hotmail.com'
  
  def welcome_email(user)
    @user = user
    
    @url = 'http://monsite.com/login'
    
    mail(to: @user.email, subject: 'Bienvenue chez nous!')
  end
=begin
  def new_attendance_email(attendance)
    @attendance = attendance
    mail(to: @attendance.event.organizer.email, subject: "Nouveau participant à votre évènement!!!")
  end
=end
end
