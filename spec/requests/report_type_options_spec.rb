require 'rails_helper'

RSpec.describe "ReportTypeOptions", type: :request do
  describe "GET /report_type_options" do
    it "works! (now write some real specs)" do
      get report_type_options_path
      expect(response).to have_http_status(200)
    end
  end
end
