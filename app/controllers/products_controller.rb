class ProductsController < ApplicationController

  # 商品一覧画面を表示
  def index

  end

  # 商品詳細画面を表示
  def show
    # データ入力後にコメントアウトを解除
    @product = Product.include(:users).find(params[:id])
    @other_products = Product.where(category_id: params[:id])
    @parent = @product.category.parent
    @grand_parent = @parent.parent
  end

  # 購入画面を表示
  def new

  end

  #購入処理及び購入完了画面の表示
  def create
  end

end
