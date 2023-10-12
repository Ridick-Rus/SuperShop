require "devise"

FactoryBot.define do
  factory :user do
    sequence :email do |n|
      "test#{n}@email.com"
    end

    sequence :password do |n|
      "Aa123456#{n}"
    end

    sequence :name do |n|
      "User-#{n}"
    end
  end
end
