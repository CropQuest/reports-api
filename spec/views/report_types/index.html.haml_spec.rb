require 'rails_helper'

RSpec.describe "report_types/index", type: :view do
  before(:each) do
    assign(:report_types, [
      ReportType.create!(
        :name => "Name",
        :description => "MyText"
      ),
      ReportType.create!(
        :name => "Name",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of report_types" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
