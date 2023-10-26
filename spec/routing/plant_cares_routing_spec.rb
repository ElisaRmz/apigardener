require "rails_helper"

RSpec.describe PlantCaresController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/plant_cares").to route_to("plant_cares#index")
    end

    it "routes to #show" do
      expect(get: "/plant_cares/1").to route_to("plant_cares#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/plant_cares").to route_to("plant_cares#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/plant_cares/1").to route_to("plant_cares#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/plant_cares/1").to route_to("plant_cares#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/plant_cares/1").to route_to("plant_cares#destroy", id: "1")
    end
  end
end
