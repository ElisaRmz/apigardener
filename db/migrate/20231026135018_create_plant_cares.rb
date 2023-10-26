class CreatePlantCares < ActiveRecord::Migration[7.0]
  def change
    create_table :plant_cares do |t|

      t.timestamps
    end
  end
end
