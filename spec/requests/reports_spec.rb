require 'rails_helper'

RSpec.describe "Reports", type: :request do

  before do
    @user = FactoryGirl.create(:user)
  end

  describe "GET /reports" do
    it "works! (now write some real specs)" do
      sign_in @user
      get reports_path
      expect(response).to have_http_status(200)
    end
  end
end
