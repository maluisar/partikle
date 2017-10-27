class CreateWaterPlants < ActiveRecord::Migration[5.1]
  def change
      create_table :water_plants do |t|

      t.string :pwsid
      t.integer :zipcode

      t.timestamps
    end
  end
end
