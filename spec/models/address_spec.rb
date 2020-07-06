require 'rails_helper'

RSpec.describe Address, type: :model do
  let(:user) { create(:user) }
  context 'userを保存できる場合' do
    it 'first_name,last_name,first_name_kana,last_name_kana,city,number,area_id,user_idがあれば保存できること' do
      address = build(:address, user_id: user.id, building: nil, phonenumber: nil)
      expect(address).to be_valid
    end
  end
  context 'addressを保存できない場合' do
    it 'first_nameが空だと保存できないこと' do
      address = build(:address, user_id: user.id, first_name: nil)
      address.valid?
      expect(address.errors[:first_name]).to include("can't be blank")
    end
    it 'last_nameが空だと保存できないこと' do
      address = build(:address, user_id: user.id, last_name: nil)
      address.valid?
      expect(address.errors[:last_name]).to include("can't be blank")
    end
    it 'first_name_kanaが空だと保存できないこと' do
      address = build(:address, user_id: user.id, first_name_kana: nil)
      address.valid?
      expect(address.errors[:first_name_kana]).to include("can't be blank")
    end
    it 'last_name_kanaが空だと保存できないこと' do
      address = build(:address, user_id: user.id, last_name_kana: nil)
      address.valid?
      expect(address.errors[:last_name_kana]).to include("can't be blank")
    end
    it 'cityが空だと保存できないこと' do
      address = build(:address, user_id: user.id, city: nil)
      address.valid?
      expect(address.errors[:city]).to include("can't be blank")
    end
    it 'numberが空だと保存できないこと' do
      address = build(:address, user_id: user.id, number: nil)
      address.valid?
      expect(address.errors[:number]).to include("can't be blank")
    end
    it 'zipが空だと保存できないこと' do
      address = build(:address, user_id: user.id, zip: nil)
      address.valid?
      expect(address.errors[:zip]).to include("can't be blank")
    end
    it 'area_idが空だと保存できないこと' do
      address = build(:address, user_id: user.id, area_id: nil)
      address.valid?
      expect(address.errors[:area_id]).to include("can't be blank")
    end
    it 'user_idが空だと保存できないこと' do
      address = build(:address, user_id: nil)
      address.valid?
      expect(address.errors[:user_id]).to include("can't be blank")
    end
    it 'zipが8文字以上だと保存できないこと' do
      zip = Faker::Number.number(digits: 8)
      address = build(:address, user_id: user.id, zip: zip)
      address.valid?
      expect(address.errors[:zip]).to include("is the wrong length (should be 7 characters)")
    end
    it 'zipが6文字以下だと保存できないこと' do
      zip = Faker::Number.number(digits: 6)
      address = build(:address, user_id: user.id, zip: zip)
      address.valid?
      expect(address.errors[:zip]).to include("is the wrong length (should be 7 characters)")
    end
  end
end
