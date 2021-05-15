class NewsletterController < ApplicationController
    def send(a)
        @email = params[:email]
        puts "SENDING EMAIL!!!!!!!!!!!!!!!!!!!!!!!!"
        NewsletterMailer.with(@email).new_email.deliver_later
    end
end