=begin
AWS::SMTP::Base.establish_connection!(
 :user_name   => ENV['SMTP_USER_NAME'],
 :password => ENV['SMTP_USER_PASSWORD']
)
=end