FactoryBot.define do
  factory :card do
    user_id {Faker::Number.non_zero_digit}
    customer_id {Faker::Blockchain::Aeternity.transaction}
    card_id {Faker::Blockchain::Aeternity.transaction}
  end
end
