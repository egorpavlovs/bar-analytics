FactoryBot.define do
  factory :cocktail do
    sequence(:name) { |n| "Cocktail Name ##{n}" }
    alcogolic_composition { "Campari, sweet vermouth, soda" }
    type { "strong" }
  end
end
