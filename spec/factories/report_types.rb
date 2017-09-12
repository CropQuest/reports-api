FactoryGirl.define do
  factory :report_type do
    name { Faker::Company.name }
    description { Faker::Company.catch_phrase }
  end
end
