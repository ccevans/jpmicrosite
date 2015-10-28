class Contact < MailForm::Base
  attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :phone,     :valideate => /\A(\d{10}|\(?\d{3}\)?[-. ]\d{3}[-.]\d{4})\z/
     
  attribute :nickname,  :captcha  => true
  attribute :time 

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "JP Health Insurance Contact Form",
      :to => ["ccevans1@gmail.com", "chamiesemarion@gmail.com"],
      :from => %("#{name}" <#{email}>)
    }
  end

  BESTTIME = %w[Mornings Afternoons Evenings]

end