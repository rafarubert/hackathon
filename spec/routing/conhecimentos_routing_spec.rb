require "spec_helper"

describe ConhecimentosController do
  describe "routing" do

    it "routes to #index" do
      get("/conhecimentos").should route_to("conhecimentos#index")
    end

    it "routes to #new" do
      get("/conhecimentos/new").should route_to("conhecimentos#new")
    end

    it "routes to #show" do
      get("/conhecimentos/1").should route_to("conhecimentos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/conhecimentos/1/edit").should route_to("conhecimentos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/conhecimentos").should route_to("conhecimentos#create")
    end

    it "routes to #update" do
      put("/conhecimentos/1").should route_to("conhecimentos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/conhecimentos/1").should route_to("conhecimentos#destroy", :id => "1")
    end

  end
end
