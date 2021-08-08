FactoryBot.define do
  factory :wine_bar do
    public_catering { build(:public_catering) }
    has_sommelier { true }
  end
end
