FactoryBot.define do
  factory :cocktail_bar do
    public_catering { build(:public_catering) }
  end
end
