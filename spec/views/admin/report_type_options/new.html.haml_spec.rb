require 'rails_helper'

RSpec.describe "admin/report_type_options/new", type: :view do
  before(:each) do
    assign(:report_type_option, ReportTypeOption.new(
      :report_type => nil,
      :name => "MyString"
    ))
  end

  it "renders new report_type_option form" do
    render

    assert_select "form[action=?][method=?]", admin_report_type_options_path, "post" do

      assert_select "input[name=?]", "report_type_option[report_type_id]"

      assert_select "input[name=?]", "report_type_option[name]"
    end
  end
end
