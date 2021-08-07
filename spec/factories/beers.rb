FactoryBot.define do
  factory :beer do
    sequence(:name) { |n| "Beer Name ##{n}" }
    abv { 12.1 }
    ibu { 32.1 }
    country { "German" }
    type { "stout" }
  end
end
