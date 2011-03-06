class SampleMail < MailForm::Base
  attributes :name, :email
  attributes :nickname
  validates :nickname, :absence => true
  
  def headers
    { :to => "recipient@example.com", :from => self.email }
  end
end