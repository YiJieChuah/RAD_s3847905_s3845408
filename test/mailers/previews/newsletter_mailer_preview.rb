# Preview all emails at http://localhost:3000/rails/mailers/newsletter_mailer
class NewsletterMailerPreview < ActionMailer::Preview
    def new_newsletter_email
        # Set up a temporary order for the preview
        email = "s3845408@student.rmit.edu.au"
        NewsletterMailer.with(email: email).newly_subscribed
    end
end
