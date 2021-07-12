FactoryBot.define do
  factory :wine do
    sequence(:name) { |n| "Wine Name ##{n}" }
    abv { 12.1 }
    country { "Spain" }
    type { "red" }
    year { 2000 }
  end
end
