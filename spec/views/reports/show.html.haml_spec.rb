require 'rails_helper'

RSpec.describe "reports/show", type: :view do
  before(:each) do
    @report = assign(:report, Report.create!(
      :user => nil,
      :report_type => nil,
      :report_type_option_ids => 2,
      :name => "Name",
      :notes => "MyText",
      :logo_enabled => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
  end
end
