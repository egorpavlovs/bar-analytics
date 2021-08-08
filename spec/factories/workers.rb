FactoryBot.define do
  factory :worker do
    user { build(:user) }
    public_catering { build(:public_catering) }
    role { "waiter" }
    rating { 12.2 }
    salary { 10_000 }
    beginning_work { Time.zone.parse("2020-07-06 14:30") }
  end
end
