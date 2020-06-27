class UserMenuController < ApplicationController

  def index
  end

  def show
    @categories = Category.where(ancestry: nil)
    @code = params[:id]
    @name = params[:name]
  end

  def new
  end

  def create
  end

end
