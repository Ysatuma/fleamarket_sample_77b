require 'rails_helper'

describe ProductsController do
  let(:user) { create(:user) }

  let(:product_params){attributes_for(:product_params)}
  let(:invalid_product_params){attributes_for(:product_params,text: "")}
  let(:noimage_product_params){attributes_for(:product )}
  let(:picture_params){attributes_for(:picture)}

  describe 'GET #new' do
    context 'ログイン状態になっていない' do
      it 'トップページに戻されるか' do
        get :new
        expect(response).to redirect_to(root_path)
      end   
    end

    context 'ログイン状態になってる' do
      it '出品画面に遷移できるか' do
        login user
        get :new
        expect(response.status).to eq 200
      end   
    end
  end

  describe 'POST #create' do
    context 'ログイン状態になっていない' do
      it 'トップページに戻されるか' do
        post :create, params:{product: noimage_product_params}
        expect(response).to redirect_to(root_path)
      end   
    end

    context 'ログイン状態になっている' do 
      before do
        login user
      end 
      context '妥当な値が入っている' do
        it 'テーブルにデータが保存されるか' do   
          expect do
            post :create, params:{product: product_params}
          end.to change(Product, :count).by 1
        end

        it '出品完了画面に遷移できるか' do
          login user
          get :new
          expect(response.status).to eq 200
        end   
      end

      context '妥当な値が入っていない' do
        it '入力した出品情報の内、必須項目の値が抜けているため出品画面に戻される' do
          post :create, params:{product: invalid_product_params}
          expect(response).to redirect_to(new_product_path)
        end    
        it '画像データが入力されていないため出品画面に戻される' do
          post :create, params:{product: noimage_product_params}
          expect(response).to redirect_to(new_product_path)
        end          
      end
    end
  end
end