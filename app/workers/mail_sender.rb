class MailSender
  @queue = :mails_queue
  def self.perform(user_id)         
    user = User.find(user_id)
    UserMailer.registration_confirmation(user).deliver       
    10.times do   
      Snippet.create!(:name => "Snippet", :language => "Rails", :source_code => "Hello word")      
    end
  end
end