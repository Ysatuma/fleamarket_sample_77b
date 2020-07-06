class ExhibitionController < ApplicationController

  # 出品画面のカテゴリー選択に伴う非同期通信処理
  def index   
    product = Category.find(params[:category_id])
    respond_to do |format|
      format.json{@category = product.children } 
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

end

