FactoryBot.define do
  factory :coctail do
    sequence(:name) { |n| "Coctail Name ##{n}" }
    alcogolic_composition { "Campari, sweet vermouth, soda" }
    type { "strong" }
  end
end
