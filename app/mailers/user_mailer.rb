class UserMailer < ApplicationMailer
  def welcome(user)
    @user = user # Instance variable => available in view
    @url = root_url

    mail(to: @user.email, subject: 'Welcome to Luma')
    # This will render a view in `app/views/user_mailer`!
  end
end
