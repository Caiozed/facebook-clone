# Preview all emails at http://localhost:3000/rails/mailers/faceclone_mailer
class FacecloneMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/faceclone_mailer/welcome
  def welcome
    FacecloneMailer.welcome
  end

end
