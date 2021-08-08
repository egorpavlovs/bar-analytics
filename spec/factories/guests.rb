FactoryBot.define do
  factory :guest do
    user { build(:user) }
  end
end
