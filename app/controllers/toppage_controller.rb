class ToppageController < ApplicationController
  
  def index
    @categories = Category.where(ancestry: nil)
  end
  
end
