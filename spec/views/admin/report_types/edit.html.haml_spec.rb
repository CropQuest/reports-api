require 'rails_helper'

RSpec.describe "admin/report_types/edit", type: :view do
  before(:each) do
    @report_type = assign(:report_type, ReportType.create!(
      :name => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit report_type form" do
    render

    assert_select "form[action=?][method=?]", admin_report_type_path(@report_type), "post" do

      assert_select "input[name=?]", "report_type[name]"

      assert_select "textarea[name=?]", "report_type[description]"
    end
  end
end
