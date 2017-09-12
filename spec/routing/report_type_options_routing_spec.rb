require "rails_helper"

RSpec.describe ReportTypeOptionsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/report_type_options").to route_to("report_type_options#index")
    end

    it "routes to #new" do
      expect(:get => "/report_type_options/new").to route_to("report_type_options#new")
    end

    it "routes to #show" do
      expect(:get => "/report_type_options/1").to route_to("report_type_options#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/report_type_options/1/edit").to route_to("report_type_options#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/report_type_options").to route_to("report_type_options#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/report_type_options/1").to route_to("report_type_options#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/report_type_options/1").to route_to("report_type_options#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/report_type_options/1").to route_to("report_type_options#destroy", :id => "1")
    end

  end
end