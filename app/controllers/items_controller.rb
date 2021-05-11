class ItemsController < ApplicationController
  

  @@items = []
  
  
  def index
    @collection = Collection.all
    @item = Item.all
    
    randIdx = rand(Item.count)
    @rand_item = Item.offset(randIdx).first
    
    render 'home/index'
  end
  
  def add()
    @@items.append(params[:item])
    puts "----------------------------------"
    puts params[:item]
    puts "----------------------------------"
    index
  end
  
  def new
    @item = Item.new
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
