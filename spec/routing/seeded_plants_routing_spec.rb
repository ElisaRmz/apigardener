require "rails_helper"

RSpec.describe SeededPlantsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/seeded_plants").to route_to("seeded_plants#index")
    end

    it "routes to #show" do
      expect(get: "/seeded_plants/1").to route_to("seeded_plants#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/seeded_plants").to route_to("seeded_plants#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/seeded_plants/1").to route_to("seeded_plants#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/seeded_plants/1").to route_to("seeded_plants#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/seeded_plants/1").to route_to("seeded_plants#destroy", id: "1")
    end
  end
end
