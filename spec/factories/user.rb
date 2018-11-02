FactoryBot.define do
  factory :user do
    email { "email#{rand(1..100)}@factory.com" }
    password { "password" }
  end
end
