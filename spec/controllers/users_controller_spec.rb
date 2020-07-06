require 'rails_helper'

RSpec.describe "UserAuthentications", type: :request do
  let(:user) { create(:user) }
  let(:user_params) { attributes_for(:user) }
  let(:invalid_user_params) { attributes_for(:user, nickname: "") }

  describe 'POST #create' do
    before do
      ActionMailer::Base.deliveries.clear
    end
    context 'パラメータが妥当な場合' do

      it 'リクエストが成功すること' do
        post user_registration_path, params: { user: user_params }
        expect(response.status).to eq 302
      end

      it 'createが成功すること' do
        expect do
          post user_registration_path, params: { user: user_params }
        end.to change(User, :count).by 1
      end

      it 'リダイレクトされること' do
        post user_registration_path, params: { user: user_params }
        expect(response).to redirect_to root_url
      end
    end
    context 'パラメータが不正な場合' do
      it 'createが失敗すること' do
        expect do
          post user_registration_path, params: { user: invalid_user_params }
        end.to_not change(User, :count)
      end
    end
  end
end
describe UsersController do
  let(:user) { create(:user) }
  describe '#edit' do
    context "ログインしている場合" do
      before do
        login user
      end
      it "@userに正しい値が入っていること" do
        get :edit, params: { id: user.id }
        expect(assigns(:user)).to eq user
      end

      it "edit.html.hamlに遷移すること" do
        get :edit, params: { id: user.id }
        expect(response).to render_template :edit
      end
    end
    context "ログインしていない場合" do
      it "ログイン画面にリダイレクトすること" do
        get :edit, params: { id: user.id }
        expect(response).to redirect_to(new_user_session_path)
      end
    end
  end
  describe '#update' do
    context "ログインしている場合" do
      before do
        login user
      end
      it '更新が正常に出来ているか' do
        user_params = { user: { nickname: "New", comment:"new" }, id: user.id  }
        login user
        patch :update, params: user_params
        expect(user.reload.nickname).to eq("New")
        expect(user.reload.comment).to eq("new")
      end
    end
    context "ログインしていない場合" do
      it "ログイン画面にリダイレクトすること" do
        patch :update, params: { id: user.id }
        expect(response).to redirect_to(new_user_session_path)
      end
    end
  end
end