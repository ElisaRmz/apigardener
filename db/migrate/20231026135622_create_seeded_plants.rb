class CreateSeededPlants < ActiveRecord::Migration[7.0]
  def change
    create_table :seeded_plants do |t|

      t.timestamps
    end
  end
end
