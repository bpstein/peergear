FactoryBot.define do
  providers = ["Facebook", "Google"]
  factory :user do
    email { FFaker::Internet.email }
    fullname "John Smith"
    uid { FFaker::PhoneNumber.area_code }
    password "123456"
    password_confirmation "123456"
  end

  factory :facebook_user do 
    email { FFaker::Internet.email }
    fullname "John Smith"
    provider { providers.sample }
    uid { FFaker::PhoneNumber.area_code }
    password "123456"
    password_confirmation "123456"
  end
end