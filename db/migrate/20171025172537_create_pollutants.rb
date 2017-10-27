class CreatePollutants < ActiveRecord::Migration[5.1]
  def change
    create_table :pollutants do |t|
      t.string :pollutant
      t.string :pollutant_type
      t.integer :mrl
      t.string :units
      t.float :bottom_range
      t.float :top_range
    end
  end
end
