require 'rails_helper'

describe CardController do
  let(:user) { create(:user) }
  before do
    login user
  end
  describe '#index' do
    before do
      payjp_customer = double("Payjp::Customer")
      payjp_list = double("Payjp::ListObject")
      payjp_card = double(exp_month: 12, exp_year: 2030)
      allow(Payjp::Customer).to receive(:retrieve).and_return(payjp_customer)
      allow(payjp_customer).to receive(:cards).and_return(payjp_list) 
      allow(payjp_list).to receive(:retrieve).and_return(payjp_card)
    end
    it '@cardに正しい値が入っていること' do
      card = create(:card, user_id: user.id)
      get :index
      expect(assigns(:card)).to eq card
    end
  end
  describe '#new' do
    context "cardが登録されている場合" do
      it '@cardに正しい値が入っていること' do
        card = create(:card, user_id: user.id)
        get :new
        expect(assigns(:card)).to eq card
      end
      it 'indexへのリダイレクトが行われること' do
        card = create(:card, user_id: user.id)
        get :new
        expect(response).to redirect_to(card_index_path)
      end
    end
    context "cardが登録されていない場合" do
      it 'リダイレクトが行われないこと' do
        get :new
        expect(response).not_to redirect_to(card_index_path)
      end
    end
  end
  describe '#create' do
    before do
      payjp_customer = double("Payjp::Customer")
      allow(Payjp::Customer).to receive(:create).and_return(payjp_customer) 
      allow(payjp_customer).to receive(:id).and_return("cus_121212121212121")
      allow(payjp_customer).to receive(:default_card).and_return("car_2323232323232323")
    end
    context 'cardが登録出来ない場合' do
      before do
        card = create(:card, user_id: user.id)
      end
      it '@cardを保存できないこと' do
        expect{ post :create, params: { payjptoken: "tok-0000000000000000" } }.to change(Card, :count).by(0)
      end
      it 'newアクションを取得する' do
        post :create, params: { payjptoken: "tok-0000000000000000" }
        expect(response).to render_template :new
      end
    end
    context 'cardが登録出来る場合' do
      it '@cardを保存すること' do
        expect{ post :create, params: { payjptoken: "tok-0000000000000000" } }.to change(Card, :count).by(1)
      end
      it 'indexにリダイレクトすること' do
        post :create, params: { payjptoken: "tok-0000000000000000" }
        expect(response).to redirect_to(action: "index")
      end
    end
  end
  describe '#destroy' do
    before do
      payjp_customer = double("Payjp::Customer")
      payjp = double("Payjp::ListObject")
      allow(Payjp::Customer).to receive(:retrieve).and_return(payjp_customer) 
      allow(payjp_customer).to receive(:delete).and_return(payjp)
    end
    it 'cardが削除されること' do
      card = create(:card, user_id: user.id)
      expect{ delete :destroy, params: { id: card.id, card_id: "" } }.to change(Card, :count).by(-1)
    end
    it 'indexにリダイレクトされること' do
      card = create(:card, user_id: user.id)
      delete :destroy, params: { id: card.id, card_id: "" }
      expect(response).to redirect_to(action: "index")
    end
  end
  describe '#buy' do
    before do
      payjp_customer = double("Payjp::Customer")
      # payjp_list = double("Payjp::ListObject")
      # payjp_card = double("Payjp::Card")
      allow(Payjp::Charge).to receive(:create).and_return(payjp_customer)
      # allow(payjp_customer).to receive(:cards).and_return(payjp_list) 
      # allow(payjp_list).to receive(:retrieve).and_return(payjp_card)
    end
    context '商品が購入済みの場合'
    before do
      # category = create(name: "test", ancestry: "1")
    end
    it 'rootへリダイレクトされること' do
      user2 = create(:user)
      category = create(:category)
      product = create(:product, user_id: user2.id, purchase: true, category_id: category.id)      
      post :buy, params: {product_id: product.id}
      expect(response).to redirect_to(root_path)
    end
    context '商品が未購入で、カード情報がない場合' do
      it 'newへリダイレクトされること' do
        user2 = create(:user)
        category = create(:category)
        product = create(:product, user_id: user2.id, category_id: category.id)
        post :buy, params: {product_id: product.id}
        expect(response).to redirect_to(action: 'new')
      end
    end
    context '商品が未購入、カード情報があるが届け先住所がない場合' do
      it 'addressのnewに飛ぶこと' do
        user2 = create(:user)
        category = create(:category)
        product = create(:product, user_id: user2.id, category_id: category.id)
        card = create(:card, user_id: user.id)
        post :buy, params: {product_id: product.id}
        expect(response).to redirect_to(new_user_address_path(user))
      end
    end
    context '商品が未購入、カード情報、届け先住所がある場合' do
      it '@productに正しい値が入っていること' do
        user2 = create(:user)
        category = create(:category)
        product = create(:product, user_id: user2.id, category_id: category.id)
        card = create(:card, user_id: user.id)
        address = create(:address, user_id: user.id)
        post :buy, params: {product_id: product.id}
        expect(assigns(:product)).to eq product
      end
    end

  end
end