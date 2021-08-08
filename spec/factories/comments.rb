FactoryBot.define do
  factory :comment do
    sequence(:text) { |n| "Text Comment ##{n}" }

    guest { build(:guest) }
    worker { build(:worker) }
    review { build(:review) }
  end
end
