class UserMailer < ApplicationMailer
  default from: 'miao@example.com'

  def welcome_email
    @email = params[:user]
    mail(to: 'sethdanford@gmail.com', subject: 'Welcome to My Awesome Site')
  end
end
