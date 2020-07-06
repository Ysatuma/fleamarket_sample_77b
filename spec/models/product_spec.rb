require 'rails_helper'

# 事前にテスト用DBのcategoryテーブルにデータを入れておくこと

RSpec.describe Product, type: :model do
  describe '#create' do
    context 'productを保存できる場合' do
      it '全項目が入力されていれば保存できること' do
        product = build(:product)
        expect(product).to be_valid
      end

      it '任意項目が抜けている場合でも保存できること' do
        product = build(:product, brand: nil)
        expect(product).to be_valid
      end
    end

    context 'productを保存できない場合' do
      it 'nameが空だと保存できないこと' do
        product = build(:product, name: nil)
        product.valid?
        expect(product.errors[:name]).to include("can't be blank")
      end
      it 'textが空だと保存できないこと' do
        product = build(:product, text: nil)
        product.valid?
        expect(product.errors[:text]).to include("can't be blank")
      end
      it 'priceが空だと保存できないこと' do
        product = build(:product, price: nil)
        product.valid?
        expect(product.errors[:price]).to include("can't be blank")
      end
      it 'category_idが空だと保存できないこと' do
        product = build(:product, category_id: nil)
        product.valid?
        expect(product.errors[:category_id]).to include("can't be blank")
      end
      it 'size_idが空だと保存できないこと' do
        product = build(:product, size_id: nil)
        product.valid?
        expect(product.errors[:size_id]).to include("can't be blank")
      end
      it 'status_idが空だと保存できないこと' do
        product = build(:product, status_id: nil)
        product.valid?
        expect(product.errors[:status_id]).to include("can't be blank")
      end
      it 'postage_idが空だと保存できないこと' do
        product = build(:product, postage_id: nil)
        product.valid?
        expect(product.errors[:postage_id]).to include("can't be blank")
      end
      it 'area_idが空だと保存できないこと' do
        product = build(:product, area_id: nil)
        product.valid?
        expect(product.errors[:area_id]).to include("can't be blank")
      end
      it 'shipping_date_idが空だと保存できないこと' do
        product = build(:product, shipping_date_id: nil)
        product.valid?
        expect(product.errors[:shipping_date_id]).to include("can't be blank")
      end
      it 'user_idが空だと保存できないこと' do
        product = build(:product, user_id: nil)
        product.valid?
        expect(product.errors[:user_id]).to include("can't be blank")
      end

      it 'priceが300より小さいと保存できないこと' do
        product = build(:product, price: "299")
        product.valid?
        expect(product.errors[:price]).to include("must be greater than 300")
      end
      it 'priceが9999999より大きいと保存できないこと' do
        product = build(:product, price: "10000000")
        product.valid?
        expect(product.errors[:price]).to include("must be less than 10000000")
      end
    end
  end
end