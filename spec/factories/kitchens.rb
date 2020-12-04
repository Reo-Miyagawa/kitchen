FactoryBot.define do
  factory :kitchen do

    name                 { 'テスト' }
    genre_id             { 1 }
    association :user

    after(:build) do |item|
      item.image.attach(io: file.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
