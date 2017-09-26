FactoryGirl.define do
  factory :report do
    association :user
    association :report_type
    name { Faker::Job.title }
    start_date Faker::Date.between(20.days.ago, 10.days.ago)
    end_date Faker::Date.between(3.days.ago, Date.today)
    notes { Faker::Lorem.sentence }
    logo_enabled { Faker::Boolean.boolean }
  end
end
