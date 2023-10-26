class CreateLands < ActiveRecord::Migration[7.0]
  def change
    create_table :lands do |t|

      t.timestamps
    end
  end
end
