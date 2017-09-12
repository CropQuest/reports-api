require 'rails_helper'

RSpec.describe Admin::ReportTypeOptionsController, type: :controller do

  before do
    @admin = FactoryGirl.create(:admin)
    @report_type = FactoryGirl.create(:report_type)
    @report_type_option = FactoryGirl.create(:report_type_option, report_type: @report_type)
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
      get :show, params: { id: @report_type_option.id }
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
      get :edit, params: {id: @report_type_option.id}
      expect(response).to be_success
    end
  end

  describe "POST #create" do
    it "creates a new ReportTypeOption" do
      report_type_option_params = FactoryGirl.attributes_for(:report_type_option)
      sign_in @admin
      expect {
        post :create, params: {report_type_option: report_type_option_params}
      }.to change(ReportTypeOption, :count).by(1)
    end
  end

  describe "PATCH #update" do
    it "updates the requested report_type_option" do
      report_type_option_params = FactoryGirl.attributes_for(:report_type_option, name: "New Report Type")
      sign_in @admin
      patch :update, params: {id: @report_type_option.id, report_type_option: report_type_option_params}
      expect(@report_type_option.reload.name).to eq "New Report Type"
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested report_type_option" do
      sign_in @admin
      expect {
        delete :destroy, params: {id: @report_type_option.id}
      }.to change(ReportTypeOption, :count).by(-1)
    end
  end

end
