FactoryBot.define do
  factory :amount do
    monthly_contribution { Faker::Number.number(4) }
  end
end
