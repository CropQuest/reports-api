require 'rails_helper'

RSpec.describe "Reports", type: :request do

  let(:user){ create :user }

  before do
    login_with create( :user )
  end

  describe "GET /reports" do
    it "works! (now write some real specs)" do
      get reports_path
      expect(response).to have_http_status(200)
    end
  end
end
