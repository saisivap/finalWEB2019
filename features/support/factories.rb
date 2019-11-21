FactoryBot.define do
  factory :user,class: User do
    email { "mahesh@gmial.com" }
    password { "sundaypsm" }
    password_confirmation { "sundaypsm" }
  end
end