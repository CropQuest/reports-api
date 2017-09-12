FactoryGirl.define do
  factory :report_type_option do
    association :report_type
    name { Faker::Company.profession }
  end
end
