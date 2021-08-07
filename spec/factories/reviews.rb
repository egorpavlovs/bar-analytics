FactoryBot.define do
  factory :review do
    sequence(:title) { |n| "Title Review ##{n}" }
    sequence(:text) { |n| "Text Review ##{n}" }
    rating { 14.4 }
  end
end
