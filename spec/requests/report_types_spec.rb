require 'rails_helper'

RSpec.describe "ReportTypes", type: :request do
  describe "GET /report_types" do
    it "works! (now write some real specs)" do
      get report_types_path
      expect(response).to have_http_status(200)
    end
  end
end
