class UserMailer < ActionMailer::Base
  default :from => "mailer@planr.pl"
  
  def registration_confirmation(user)
    @user = user
    mail(:to => "#{user.name} <#{user.email}>", :subject => "Zarejestrowano!")
  end
end