class ContactForm < MailForm::Base
  attribute :name, :validate => true
  attribute :email, :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :file, :attachement => true

  attribute :message

  def headers 
    {
      :subject => "Contact Form", 
      :to => "awkwardmelon@gmail.com",
      :from => %("#{name}" <#{email}>)
    }
  end
end