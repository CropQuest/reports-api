require 'rails_helper'

RSpec.describe "Admin::ReportTypes", type: :request do

  before do
    @admin = FactoryGirl.create(:admin)
  end

  describe "GET /admin/report_types" do
    it "works! (now write some real specs)" do
      sign_in @admin
      get admin_report_types_path
      expect(response).to have_http_status(200)
    end
  end
end
