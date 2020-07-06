class CardController < ApplicationController
  require "payjp"
  
  before_action :set_categories, only: [:index, :new]
  before_action :set_card, only: [:new, :index, :destroy, :buy]
  before_action :user_signed?
  #pCardのデータベースからデータを取り出す
  def new
    redirect_to card_index_path if @card
  end

  #payjpとCardのデータベース作成を実施
  def create
    Payjp.api_key = Rails.application.credentials.payjp[:secret_key]
    if params['payjptoken'].blank?
      redirect_to action: "new"
    else
      customer = Payjp::Customer.create(card: params['payjptoken'])
      @card = Card.new(user_id: current_user.id, customer_id: customer.id, card_id: customer.default_card)
      if @card.save
        redirect_to action: "index"
      else
        render "new"
      end
    end
  end

  def index #Cardのデータpayjpに送り情報を取り出します
    if @card
      Payjp.api_key = Rails.application.credentials.payjp[:secret_key]
      customer = Payjp::Customer.retrieve(@card.customer_id)
      @default_card_information = customer.cards.retrieve(@card.card_id)
      @card_exp = card_expiration(@default_card_information)
    end
  end

  def destroy #PayjpとCardデータベースを削除します
    if @card
      Payjp.api_key = Rails.application.credentials.payjp[:secret_key]
      customer = Payjp::Customer.retrieve(@card.customer_id)
      customer.delete
      @card.delete
    end
      redirect_to action: "index"
  end
  def buy
    @product = Product.find(params[:product_id])
    if @product.purchase == true #もし購入済みなら
      redirect_to root_path
    elsif @card.blank? #カード情報が無い場合
      redirect_to action: "new"
    elsif current_user.address.blank? #届け先住所が無い場合
      redirect_to new_user_address_path(current_user)
    else
      Payjp.api_key = Rails.application.credentials.payjp[:secret_key]
      Payjp::Charge.create(
      amount: @product.price,
      customer: @card.customer_id,
      currency: 'jpy'
      )
      @product.update(purchase: true)
    end
  end
  private
    def set_categories
      @categories = Category.where(ancestry: nil)
    end

    def set_card
      @card = Card.find_by(user_id: current_user.id)
    end

    def card_expiration(card_info) #カード情報の有効期限をビュー表示用に変化
      exp_month = card_info.exp_month.to_s
      exp_year = card_info.exp_year.to_s.slice(2,3)
      return exp_month + " / " + exp_year
    end
    def user_signed?
      if current_user.blank?
        redirect_to new_user_session_path
      end
    end
end
