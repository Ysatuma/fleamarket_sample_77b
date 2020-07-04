class CardController < ApplicationController
  require "payjp"

  #pCardのデータベースからデータを取り出す
  def new
    @categories = Category.where(ancestry: nil)
    @card = Card.find_by(user_id: current_user.id)
    redirect_to action: "show" if @card
  end

  #payjpとCardのデータベース作成を実施
  def create
    Payjp.api_key = ENV["PAYJP_PRIVATE_KEY"]
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
    @categories = Category.where(ancestry: nil)
    @card = Card.find_by(user_id: current_user.id)
    if @card
      Payjp.api_key = ENV["PAYJP_PRIVATE_KEY"]
      customer = Payjp::Customer.retrieve(@card.customer_id)
      @default_card_information = customer.cards.retrieve(@card.card_id)
    end
  end

  def destroy #PayjpとCardデータベースを削除します
    card = Card.find_by(user_id: current_user.id)
    if card
      Payjp.api_key = ENV["PAYJP_PRIVATE_KEY"]
      customer = Payjp::Customer.retrieve(card.customer_id)
      customer.delete
      card.delete
    end
      redirect_to action: "index"
  end

end
