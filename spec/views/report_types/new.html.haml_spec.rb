require 'rails_helper'

RSpec.describe "report_types/new", type: :view do
  before(:each) do
    assign(:report_type, ReportType.new(
      :name => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new report_type form" do
    render

    assert_select "form[action=?][method=?]", report_types_path, "post" do

      assert_select "input[name=?]", "report_type[name]"

      assert_select "textarea[name=?]", "report_type[description]"
    end
  end
end
