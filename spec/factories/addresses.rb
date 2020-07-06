FactoryBot.define do
  factory :address do
    Faker::Config.locale = :ja
    first_name {Gimei.first.kanji}
    last_name {Gimei.last.kanji}
    first_name_kana {Gimei.first.katakana}
    last_name_kana {Gimei.last.katakana}
    city {Gimei.city.kanji }
    number {Gimei.town.to_s}
    zip {Faker::Number.number(digits: 7)}
    phonenumber {Faker::PhoneNumber.phone_number}
    building {Faker::Address.secondary_address}
    area_id {Faker::Number.between(from: 1, to: 47)}
  end
end
