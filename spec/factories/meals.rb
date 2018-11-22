FactoryBot.define do
  factory :meal do
    user { nil }
    recipe { nil }
    cal_date { "2018-11-22" }
    type { 1 }
  end
end
