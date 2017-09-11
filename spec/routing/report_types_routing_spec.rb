require "rails_helper"

RSpec.describe ReportTypesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/report_types").to route_to("report_types#index")
    end

    it "routes to #new" do
      expect(:get => "/report_types/new").to route_to("report_types#new")
    end

    it "routes to #show" do
      expect(:get => "/report_types/1").to route_to("report_types#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/report_types/1/edit").to route_to("report_types#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/report_types").to route_to("report_types#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/report_types/1").to route_to("report_types#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/report_types/1").to route_to("report_types#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/report_types/1").to route_to("report_types#destroy", :id => "1")
    end

  end
end
