require 'rails_helper'

RSpec.describe Admin::ReportTypesController, type: :controller do

  before do
    @admin = FactoryGirl.create(:admin)
    @report_type = FactoryGirl.create(:report_type)
  end

  describe "GET #index" do
    it "returns a success response" do
      sign_in @admin
      get :index
      expect(response).to be_success
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      sign_in @admin
      get :show, params: { id: @report_type.id }
      expect(response).to be_success
    end
  end

  describe "GET #new" do
    it "returns a success response" do
      sign_in @admin
      get :new, params: {}
      expect(response).to be_success
    end
  end

  describe "GET #edit" do
    it "returns a success response" do
      sign_in @admin
      get :edit, params: {id: @report_type.id}
      expect(response).to be_success
    end
  end

  describe "POST #create" do
    it "creates a new ReportType" do
      report_type_params = FactoryGirl.attributes_for(:report_type)
      sign_in @admin
      expect {
        post :create, params: {report_type: report_type_params}
      }.to change(ReportType, :count).by(1)
    end
  end

  describe "PATCH #update" do
    it "updates the requested report_type" do
      report_type_params = FactoryGirl.attributes_for(:report_type, name: "New Report Type")
      sign_in @admin
      patch :update, params: {id: @report_type.id, report_type: report_type_params}
      expect(@report_type.reload.name).to eq "New Report Type"
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested report_type" do
      sign_in @admin
      expect {
        delete :destroy, params: {id: @report_type.id}
      }.to change(ReportType, :count).by(-1)
    end
  end

end
