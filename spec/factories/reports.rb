FactoryGirl.define do
  factory :report do
    user nil
    report_type nil
    report_type_option_ids 1
    name "MyString"
    start_date "2017-09-11"
    end_date "2017-09-11"
    notes "MyText"
    logo_enabled false
  end
end
