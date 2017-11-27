# Preview all emails at http://localhost:3000/rails/mailers/contact_author_mailer
class ContactAuthorMailerPreview < ActionMailer::Preview
  def contact
    ContactAuthorMailer.contact('Fred', 'fred@gmail.com', 'I love you', "and your books too")
  end
end
