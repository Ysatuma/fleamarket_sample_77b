class ProductsController < ApplicationController
  before_action :get_categories, only: [:index, :show]
  before_action :check_user_login, only: [:new, :create]
  
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


  # 商品出品画面の表示
  def new
    @product = Product.new
    @product.pictures.new

    @categories = Category.where(ancestry: nil)

    @category1 = []
    @category2 = []
    @category3 = []

    # 親レコードを取得
    @categories.each do |root|
      @category1.push([root.name, root.id])
    end    
  end


  # 出品した商品の出品処理
  def create
    @product = Product.new(product_params)

    # 画像データがあるか
    if params[:product][:pictures_attributes] != nil
      if @product.save  
      else
        redirect_to action: :new
      end
    else
      redirect_to action: :new
    end

  end

  def show
    @product = Product.find(params[:id])
    @categories = Category.where(ancestry: nil)

  # 商品詳細画面の表示
    @category = Category.find(params[:category_id])
    @level = @category.depth

    # # 同一カテゴリの商品及び対応する写真一覧を取得
    @products = Product.where(category_id: params[:category_id])
  end
  

  def destroy
    product = Product.find(params[:id])
    if product
      product.destroy
    end
    redirect_to user_menu_index_path 
  end

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

  # ログインしているかをチェックする
  def check_user_login
    redirect_to root_path unless user_signed_in?
  end

end
