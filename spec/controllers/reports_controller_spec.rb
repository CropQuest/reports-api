require 'rails_helper'

RSpec.describe ReportsController, type: :controller do

  before do
    @user = FactoryGirl.create(:user)
    @report = FactoryGirl.create(:report, user: @user)
  end

  describe "GET #index" do
    it "returns a success response" do
      sign_in @user
      get :index
      expect(response).to be_success
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      sign_in @user
      get :show, params: { id: @report.id }
      expect(response).to be_success
    end
  end

  describe "GET #new" do
    it "returns a success response" do
      sign_in @user
      get :new, params: {}
      expect(response).to be_success
    end
  end

  describe "GET #edit" do
    it "returns a success response" do
      sign_in @user
      get :edit, params: {id: @report.to_param}
      expect(response).to be_success
    end
  end

  describe "POST #create" do
    it "creates a new Report" do
      report_params = FactoryGirl.attributes_for(:report)
      sign_in @user
      expect {
        post :create, params: { report: report_params }
      }.to change(@user.reports, :count).by(1)
    end
  end

  describe "PATCH #update" do
    it "updates the requested report" do
      report_params = FactoryGirl.attributes_for(:report, name: "New Report Name")
      sign_in @user
      patch :update, params: { id: @report.id, report: report_params }
      expect(@report.reload.name).to eq "New Report Name"
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested report" do
      sign_in @user
      expect {
        delete :destroy, params: { id: @report.id }
      }.to change(@user.reports, :count).by(-1)
    end
  end

end
