FactoryBot.define do
  factory :beer_pub do
    public_catering { build(:public_catering) }
    has_kicker { true }
  end
end
