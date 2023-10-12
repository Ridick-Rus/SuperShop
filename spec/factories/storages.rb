FactoryBot.define do
  factory :storage do
    sequence(:amount) { |n| 10 + rand(n) }

    association :product, factory: :product
  end
end
