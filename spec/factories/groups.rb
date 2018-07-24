FactoryBot.define do
  factory :group do
    name { Faker::Name.name }
    amount { create(:amount) }
  end
end
