require 'rails_helper'

RSpec.describe "reports/index", type: :view do
  before(:each) do
    assign(:reports, [
      Report.create!(
        :user => nil,
        :report_type => nil,
        :report_type_option_ids => 2,
        :name => "Name",
        :notes => "MyText",
        :logo_enabled => false
      ),
      Report.create!(
        :user => nil,
        :report_type => nil,
        :report_type_option_ids => 2,
        :name => "Name",
        :notes => "MyText",
        :logo_enabled => false
      )
    ])
  end

  it "renders a list of reports" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
