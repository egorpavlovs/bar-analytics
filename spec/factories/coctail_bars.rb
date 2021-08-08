FactoryBot.define do
  factory :coctail_bar do
    public_catering { build(:public_catering) }
  end
end
