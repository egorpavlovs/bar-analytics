FactoryBot.define do
  factory :food do
    sequence(:name) { |n| "Food Name ##{n}" }
    product_composition { "Apples" }
  end
end
