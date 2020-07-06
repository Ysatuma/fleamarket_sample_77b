FactoryBot.define do
  factory :user do
    Faker::Config.locale = :ja
    nickname {Faker::Movies::HarryPotter.character}
    email {Faker::Internet.email}
    password = Faker::Internet.password(min_length: 7)
    first_name {Gimei.first.kanji}
    last_name {Gimei.last.kanji}
    first_name_kana {Gimei.first.katakana}
    last_name_kana {Gimei.last.katakana}
    dob {Faker::Date.in_date_period}
    comment {Faker::Movies::StarWars.quote}
    phonenumber {Faker::PhoneNumber.phone_number}
    password {password}
    password_confirmation {password}
  end
end
