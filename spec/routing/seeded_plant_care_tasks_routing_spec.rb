require "rails_helper"

RSpec.describe SeededPlantCareTasksController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/seeded_plant_care_tasks").to route_to("seeded_plant_care_tasks#index")
    end

    it "routes to #show" do
      expect(get: "/seeded_plant_care_tasks/1").to route_to("seeded_plant_care_tasks#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/seeded_plant_care_tasks").to route_to("seeded_plant_care_tasks#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/seeded_plant_care_tasks/1").to route_to("seeded_plant_care_tasks#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/seeded_plant_care_tasks/1").to route_to("seeded_plant_care_tasks#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/seeded_plant_care_tasks/1").to route_to("seeded_plant_care_tasks#destroy", id: "1")
    end
  end
end
