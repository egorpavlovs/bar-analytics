FactoryBot.define do
  factory :coctail do
    sequence(:name) { |n| "Coctail Name ##{n}" }
    abv { 12.1 }
    alcogolic_composition { "Campari, sweet vermouth, soda" }
    type { "strong" }
  end
end
