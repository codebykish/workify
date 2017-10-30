FactoryGirl.define do
  factory :artist do
    name   { Faker::Name.first_name }
    age { Faker::Number.between(15, 50) }
    bio { "Hello everybody" }
  end
end
