FactoryBot.define do
  factory :price do
    sequence(:cost) { 129.12 }
    currency { "usd" }
  end
end
