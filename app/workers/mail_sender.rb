class MailSender
  @queue = :mails_queue
  def self.perform(user_id)         
    user = User.find(user_id)
    UserMailer.registration_confirmation(user).deliver       
  end
end