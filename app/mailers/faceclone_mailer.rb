class FacecloneMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.faceclone_mailer.welcome.subject
  #
  def welcome(user)
  	@user = user
		mail to: user.email, subject: "Thank you!"
  end
end
