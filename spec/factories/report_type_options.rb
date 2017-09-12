FactoryGirl.define do
  factory :report_type_option do
    report_type
    name { Faker::Company.profession }
  end
end
