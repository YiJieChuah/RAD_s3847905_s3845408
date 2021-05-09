class HomeController < ApplicationController
  def index
    @collection = Collection.all
    @item = Item.all
    
    randIdx = rand(Item.count)
    @rand_item = Item.offset(randIdx).first
  end
end
