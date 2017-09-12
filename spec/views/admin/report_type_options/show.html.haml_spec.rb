require 'rails_helper'

RSpec.describe "admin/report_type_options/show", type: :view do
  before(:each) do
    @report_type_option = assign(:report_type_option, ReportTypeOption.create!(
      :report_type => nil,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Name/)
  end
end
