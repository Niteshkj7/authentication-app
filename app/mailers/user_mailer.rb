class UserMailer < ApplicationMailer
  def welcome_email(user)
    mail(to: user.email, subject: 'Welcome to Authentication App')
  end
end
