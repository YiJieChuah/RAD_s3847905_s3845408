class HomeController < ApplicationController
  
  EMAIL_FORMAT = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  
  def index
    @items = Item.order('popularity DESC').first(4)
    @collections = Collection.first(4)
    
    offset = rand(Item.count)
    @rand_item = Item.offset(offset).first
  end
  
  def newsletter
    email = params[:email]
    if email
      if email.match(EMAIL_FORMAT) && current_user.nil?
        NewsletterMailer.signup_confirmation(email).deliver
        redirect_to root_path, flash: { success: "Check your inbox!" }
      end
    end
  end
  
  
  
end
