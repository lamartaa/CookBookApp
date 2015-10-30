class UserMailer < ApplicationMailer

    default from: "lamartaa@uwec.edu"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.password_reset.subject
  #
  def password_reset(user)
    @user = user
    puts "2 ---- " + user.email
    mail(to: @user.email, subject:  'Password Reset')
    puts "2 ---- MAILED TO NOW"
  end
end
