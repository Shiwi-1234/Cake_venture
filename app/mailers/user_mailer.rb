class UserMailer < ApplicationMailer
    def welcome_email(user)
        @user = user
        mail(to: @user.user_email, subject: 'Welcome to Your App')
    end
end
