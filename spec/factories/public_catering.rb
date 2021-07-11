FactoryBot.define do
  factory :public_catering do
    sequence(:name) { |n| "Public Catering ##{n}" }
    rating { 13.3 }
    address { "Kazan, Karla Marksa 5" }
    start_working { Time.zone.parse("18:00") }
    end_working { Time.zone.parse("00:00") }
  end
end
