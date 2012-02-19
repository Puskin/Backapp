class UserMailer < ActionMailer::Base
  default :from => "Planr.pl <mailer@planr.pl>"
  
  def registration_confirmation(user)
    @user = user
    mail(:to => "#{user.name} <#{user.email}>", :subject => "Zarejestrowano Twoje konto #{user.name}!")
  end
end