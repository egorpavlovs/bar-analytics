FactoryBot.define do
  factory :cafe do
    public_catering { build(:public_catering) }
  end
end
