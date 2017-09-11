require 'rails_helper'

RSpec.describe "report_types/show", type: :view do
  before(:each) do
    @report_type = assign(:report_type, ReportType.create!(
      :name => "Name",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
  end
end
