class ItemsController < ApplicationController
  
  @@called = false
  
  def index
    @collection = Collection.all
    @item = Item.all
    
    randIdx = rand(Item.count)
    @rand_item = Item.offset(randIdx).first
    
    render 'home/index'
  end
  
  def new
    @item = Item.new
  end
  
  def send(a)
    @email1 = params[:email]
    @email = 'sethdanford@gmail.com'
    # Tell the UserMailer to send a welcome email after save
    UserMailer.with(user: @email).welcome_email.deliver_now
    puts "EMAIL SENT????"
    index
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
