class UsersController < ApplicationController
  before_action :ensure_correct_user, only: [:edit, :update]
  before_action :set_user, only: [:edit, :update]

  def edit
    @categories = Category.where(ancestry: nil)
  end

  def update
    @user.update_attributes(user_params)
    if @user.save
      redirect_to root_path
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:nickname, :comment).merge(without_validate: true)
  end

  def ensure_correct_user
    if current_user.id != params[:id].to_i
      redirect_to root_path
    end
  end
  
  def set_user
    @user = User.find(params[:id])
  end
end

