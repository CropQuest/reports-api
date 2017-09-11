require 'rails_helper'

RSpec.describe "reports/edit", type: :view do
  before(:each) do
    @report = assign(:report, Report.create!(
      :user => nil,
      :report_type => nil,
      :report_type_option_ids => 1,
      :name => "MyString",
      :notes => "MyText",
      :logo_enabled => false
    ))
  end

  it "renders the edit report form" do
    render

    assert_select "form[action=?][method=?]", report_path(@report), "post" do

      assert_select "input[name=?]", "report[user_id]"

      assert_select "input[name=?]", "report[report_type_id]"

      assert_select "input[name=?]", "report[report_type_option_ids]"

      assert_select "input[name=?]", "report[name]"

      assert_select "textarea[name=?]", "report[notes]"

      assert_select "input[name=?]", "report[logo_enabled]"
    end
  end
end
