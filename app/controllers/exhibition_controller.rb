class ExhibitionController < ApplicationController

  # 出品画面のカテゴリー選択に伴う非同期通信処理
  def index
    
    product = Category.find(params[:category_id])

    respond_to do |format|
      format.json{@category = product.children } 
    end

  end

end
