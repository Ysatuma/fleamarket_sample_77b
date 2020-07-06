class ToppageController < ApplicationController
  
  def index
    @categories = Category.where(ancestry: nil)
    @products =  Product.all.order(id:"DESC").limit(4)
  end
  
end
