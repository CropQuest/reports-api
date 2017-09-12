FactoryGirl.define do
  factory :user do
    email { Faker::Internet.email }
    password { Faker::Internet.password }
    report_admin false
  end

  factory :admin, class: User do
    email { Faker::Internet.email }
    password { Faker::Internet.password }
    report_admin true
  end
end
