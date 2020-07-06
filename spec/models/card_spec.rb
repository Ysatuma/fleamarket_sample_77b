require 'rails_helper'

RSpec.describe Card, type: :model do
  context 'cardを保存出来る場合' do
    it 'user_id,customer_id,card_idがあれば保存できる' do
      user = create(:user)
      card = build(:card, user_id: user.id)
      expect(card).to be_valid
    end
  end
  context 'cardを保存できない場合' do
    it 'user_idが空だと保存できないこと' do
      card = build(:card, user_id: nil)
      card.valid?
      expect(card.errors[:user_id]).to include("can't be blank")
    end
    it 'customer_idが空だと保存できないこと' do
      user = create(:user)
      card = build(:card, user_id: user.id, customer_id: nil)
      card.valid?
      expect(card.errors[:customer_id]).to include("can't be blank")
    end
    it 'card_idが空だと保存できないこと' do
      user = create(:user)
      card = build(:card, user_id: user.id, card_id: nil)
      card.valid?
      expect(card.errors[:card_id]).to include("can't be blank")
    end
    it '同じuser_idが既に存在していると保存できないこと' do
      user = create(:user)
      card = create(:card, user_id: user.id)
      card2 = build(:card, user_id: card.user_id)
      card2.valid?
      expect(card2.errors[:user_id]).to include("has already been taken")
    end
  end
end
