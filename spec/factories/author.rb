FactoryBot.define do
  factory :author do
    name { Faker::Name.name }
    date_of_death { Faker::Date.in_date_period }
    date_of_birth { Faker::Date.birthday(min_age: 18, max_age: 65) }
  end
end
