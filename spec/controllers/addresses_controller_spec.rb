require 'rails_helper'

describe AddressesController do
  let(:user) { create(:user) }
  let(:address) { create(:address, user_id: user.id) }
  describe '#new' do
    context 'ログインしている場合' do
      before do
        login user
      end
      context '対応する@addressが無い場合' do
        it '@userに正しい値が入っていること' do
          get :new, params: { user_id: user.id }
          expect(assigns(:user)).to eq user
        end
        it '@addressに正しい値が入っていること' do
          get :new, params: { user_id: user.id }
          expect(assigns(:address)).to be_a_new(Address)
        end
        it "new.html.hamlに遷移すること" do
          get :new, params: { user_id: user.id }
          expect(response).to render_template :new
        end
      end
      context '対応する@addressがある場合' do
        it '@addressに正しい値が入っていること' do
          get :new, params: { user_id: address.user_id }
          expect(assigns(:address)).to eq (address)
        end
      end
    end
    context 'ログインしていない場合' do
      before do
        get :new, params: { user_id: user.id }
      end
      it 'ログイン画面にリダイレクトすること' do
        expect(response).to redirect_to(new_user_session_path)
      end
    end
  end
  describe '#create' do
    let(:params) { { address: attributes_for(:address), user_id: user.id } }
    before do
      login user
    end
    context "保存に成功した場合" do
      subject { post :create, params: params }
      it 'addressを保存すること' do
        expect{ subject }.to change(Address, :count).by(1)
      end
      it 'root_pathへリダイレクトすること' do
        subject
        expect(response).to redirect_to(root_path)
      end
    end
    context "保存に失敗した場合" do
      let(:invalid_params) { { user_id: user.id, address: attributes_for(:address, first_name: nil ) } }
      subject { post :create, params: invalid_params }
      it 'messageを保存しないこと' do
        expect{ subject }.not_to change(Address, :count)
      end
      it 'new.html.hamlに遷移すること' do
        subject
        expect(response).to render_template :new
      end
    end
  end
  describe '#update' do
    before do
      login user    
    end
    it "addressの更新が正常にできるか" do
      patch :update, params: { address: attributes_for(:address, first_name: "new"), user_id: user.id, id: address.id}
      expect(address.reload.first_name).to eq "new" 
    end
    it "更新後正常にroot_pathにリダイレクトできるか" do
      patch :update, params: { address: attributes_for(:address, first_name: "new"), user_id: user.id, id: address.id}
      expect(response).to redirect_to(root_path)
    end
      it "addressの更新が正常にできるか" do
        patch :update, params: { address: attributes_for(:address, first_name: "new"), user_id: user.id, id: address.id}
        expect(address.reload.first_name).to eq "new" 
    end
    it "更新後正常にroot_pathにリダイレクトできるか" do
      patch :update, params: { address: attributes_for(:address, first_name: "new"), user_id: user.id, id: address.id}
      expect(response).to redirect_to(root_path)
    end
  end
end