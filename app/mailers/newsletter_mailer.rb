class NewsletterMailer < ApplicationMailer
    def new_email
        @email = params[:email]
    
        mail(to: @email, subject: "Welcome to our newsletter")
    end
end
