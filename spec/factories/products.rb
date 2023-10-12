FactoryBot.define do
  factory :product do
    sequence(:name) { |n| "Product-#{n}" }

    sequence(:price) { |n| 30 + rand(n) }

    trait :with_storage do
      after :create do |product|
        create(:storage, product: product)
      end
    end
  end
end
