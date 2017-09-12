require 'rails_helper'

RSpec.describe "admin/report_type_options/edit", type: :view do
  before(:each) do
    @report_type_option = assign(:report_type_option, ReportTypeOption.create!(
      :report_type => nil,
      :name => "MyString"
    ))
  end

  it "renders the edit report_type_option form" do
    render

    assert_select "form[action=?][method=?]", admin_report_type_option_path(@report_type_option), "post" do

      assert_select "input[name=?]", "report_type_option[report_type_id]"

      assert_select "input[name=?]", "report_type_option[name]"
    end
  end
end
