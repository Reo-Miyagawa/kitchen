FactoryBot.define do
  factory :user do
    name                       { 'テストくん' }
    email                      { Faker::Internet.email }
    password                   { '111aaa' }
    password_confirmation      { password }
  end
end
