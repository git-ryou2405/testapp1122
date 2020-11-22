require "rails_helper"

RSpec.describe SendHistoriesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/send_histories").to route_to("send_histories#index")
    end

    it "routes to #new" do
      expect(:get => "/send_histories/new").to route_to("send_histories#new")
    end

    it "routes to #show" do
      expect(:get => "/send_histories/1").to route_to("send_histories#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/send_histories/1/edit").to route_to("send_histories#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/send_histories").to route_to("send_histories#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/send_histories/1").to route_to("send_histories#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/send_histories/1").to route_to("send_histories#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/send_histories/1").to route_to("send_histories#destroy", :id => "1")
    end
  end
end
