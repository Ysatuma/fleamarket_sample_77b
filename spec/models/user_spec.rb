require 'rails_helper'

RSpec.describe User, type: :model do
  describe '#create' do
    context 'userを保存できる場合' do
      it 'nickname,email,password,first_name,last_name,first_name_kana,last_name_kana,dobがあれば保存できること' do
        expect(build(:user, comment: nil, phonenumber: nil)).to be_valid
      end
      it 'パスワードが7文字以上であれば登録できる' do
        password = Faker::Internet.password(min_length: 7, max_length: 7)
        expect(build(:user, password: password, password_confirmation: password)).to be_valid
      end
    end
    context 'userを保存できない場合' do
      it 'nicknameが空だと保存できないこと' do
        user = build(:user, nickname: nil)
        user.valid?
        expect(user.errors[:nickname]).to include("can't be blank")
      end
      it 'emailが空だと保存できないこと' do
        user = build(:user, email: nil)
        user.valid?
        expect(user.errors[:email]).to include("can't be blank")
      end
      it 'passwordが空だと保存できないこと' do
        user = build(:user, password: nil)
        user.valid?
        expect(user.errors[:password]).to include("can't be blank")
      end
      it 'first_nameが空だと保存できないこと' do
        user = build(:user, first_name: nil)
        user.valid?
        expect(user.errors[:first_name]).to include("can't be blank")
      end
      it 'last_nameが空だと保存できないこと' do
        user = build(:user, last_name: nil)
        user.valid?
        expect(user.errors[:last_name]).to include("can't be blank")
      end
      it 'first_name_kanaが空だと保存できないこと' do
        user = build(:user, first_name_kana: nil)
        user.valid?
        expect(user.errors[:first_name_kana]).to include("can't be blank")
      end
      it 'last_name_kanaが空だと保存できないこと' do
        user = build(:user, last_name_kana: nil)
        user.valid?
        expect(user.errors[:last_name_kana]).to include("can't be blank")
      end
      it 'dobが空だと保存できないこと' do
        user = build(:user, dob: nil)
        user.valid?
        expect(user.errors[:dob]).to include("can't be blank")
      end
      it 'パスワードが6文字以下であれば保存できないこと' do
        password = Faker::Internet.password(min_length: 6, max_length: 6)
        user = build(:user, password: password, password_confirmation: password)
        user.valid?
        expect(user.errors[:password]).to include("is too short (minimum is 7 characters)")
      end
      it "パスワードと確認が一致していないと登録できない" do
        user = build(:user, password_confirmation: "")
        user.valid?
        expect(user.errors[:password_confirmation]).to include("doesn't match Password")
      end
      it "登録済みのemailアドレスでは登録できない" do
        email = Faker::Internet.email
        user = create(:user, email: email)
        user2 = build(:user, email: email)
        user2.valid?
        expect(user2.errors[:email]).to include("has already been taken")
      end
    end
  end
end
