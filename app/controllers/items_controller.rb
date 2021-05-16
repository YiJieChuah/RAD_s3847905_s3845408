class ItemsController < ApplicationController
  def new
    @item = Item.new
  end
  
  def send
    @email1 = params[:email]
    @email = 'sethdanford@gmail.com'
    # Tell the UserMailer to send a welcome email after save
    UserMailer.with(user: @email).welcome_email.deliver_now
    puts "EMAIL SENT!!!!!!!!!"
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to @item
    else
      render "new"
    end
  end

  def show
    @item = Item.find(params[:id])
  end
  
  private
  def item_params
    params.require(:item).permit(:name, :price)
  end
end
