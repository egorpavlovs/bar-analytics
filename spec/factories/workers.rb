FactoryBot.define do
  factory :worker do
    role { "waiter" }
    rating { 12.2 }
    salary { 10_000 }
    beginning_work { Time.zone.parse("2020-07-06 14:30") }
  end
end
