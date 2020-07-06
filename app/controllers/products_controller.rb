class ProductsController < ApplicationController
  before_action :get_categories, only: [:index, :show]
  before_action :set_product, only: :show2
  before_action :check_user_login, only: [:new, :create, :destroy]
  
  # 商品一覧画面の表示
  def index
    @categories = Category.where(ancestry: nil)   
    @products = Product.new
    @children = Category.new
    @level = nil

    # 特定のカテゴリのみ閲覧
    unless(params[:all_view] == 'true')
      @view_all = false
      @category = Category.find(params[:id])

      case @level = @category.depth
      # 親カテゴリーの場合    
      when 0
        @children = @category.children
        @products = Product.where(category_id: @category.indirects.ids)

      # 子カテゴリーの場合  
      when 1
        @children = @category.children
        @products = Product.where(category_id: @children.ids)
       
      # 孫カテゴリーの場合  
      when 2
        @products = Product.where(category_id: params[:id])
      else
        
      end

    # 全カテゴリーを閲覧
    else
      @view_all = true
    end
  end


  # 商品詳細画面の表示
  def show
    @product = Product.find(params[:id])
    @categories = Category.where(ancestry: nil)
    @category = Category.find(params[:category_id])
    @level = @category.depth

    # 同一カテゴリの商品を取得
    @products = Product.where(category_id: params[:category_id])
  end

  #購入確認画面の表示
  def show2
    if current_user.blank?
      redirect_to new_user_session_path
    elsif @product.user.id == current_user.id || @product.purchase == true #購入済みの場合または出品者と購入ユーザーが一致している場合
      redirect_to root_path
    else
      if @card = current_user.card #現在のユーザーがカードを登録しているなら
        Payjp.api_key = Rails.application.credentials.payjp[:secret_key]
        customer = Payjp::Customer.retrieve(@card.customer_id)
        @default_card_information = customer.cards.retrieve(@card.card_id)
        @expiration = card_expiration(@default_card_information)
      end
      if current_user.address.present? #現在のユーザーが届け先住所を登録しているなら
        @zipcode = zipcode(current_user)
        @user_address = user_address(current_user)
      end
    end
  end

  # 出品している商品の削除処理
  def destroy
    product = Product.find(params[:id])
    if product
      product.destroy
    end
    redirect_to user_menu_index_path 
  end

  # ユーザーメニューの出品情報を表示
  def user_index
    @categories = Category.where(ancestry: nil)
    @products = Product.where(user_id: params[:user_id])
  end


  private 

  def get_categories
    @categories = Category.where(ancestry: nil)
  end

  def product_params  
    params.require(:product).permit(:name, :text, :price, :brand, :status, :category_id, :size_id, :status_id, :postage_id, :area_id, :shipping_date_id, pictures_attributes: [:image]).merge(user_id: current_user.id)
  end

  def zipcode(user) #郵便番号に-を入れ込む
    str = user.address.zip.to_s
    return str.insert(3, "-")
  end

  def user_address(user) #ユーザー届け先住所を連結
    return user.address.area.name + user.address.city + user.address.number + user.address.building
  end

  def card_expiration(card_info) #カード情報の有効期限をビュー表示用に変化
    exp_month = card_info.exp_month.to_s
    exp_year = card_info.exp_year.to_s.slice(2,3)
    return exp_month + " / " + exp_year
  end

  def set_product #商品情報を引っ張ってくる
    @product = Product.find(params[:id])
  end

  # ログインしているかをチェックする
  def check_user_login
    redirect_to root_path unless user_signed_in?
  end
end
