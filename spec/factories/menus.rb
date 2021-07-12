FactoryBot.define do
  factory :menu do
    sequence(:name) { |n| "Menu Name ##{n}" }
  end
end
