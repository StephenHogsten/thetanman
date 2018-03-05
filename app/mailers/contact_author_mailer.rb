class ContactAuthorMailer < ApplicationMailer
  default from: 'notification@lucyrtan.com'

  def contact(user_name, email, subject, message)
    @name = user_name
    @email = email
    @subject = subject
    @message = message

    # make this read from ENV or something
    mail(to: ENV['recipient_email'], subject: subject)
  end
end
