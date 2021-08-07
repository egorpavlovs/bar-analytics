FactoryBot.define do
  factory :comment do
    sequence(:text) { |n| "Text Comment ##{n}" }
  end
end
