class CreateSamples < ActiveRecord::Migration[5.1]
  def change
    create_table :samples do |t|
     t.string :pwsid
     t.string :facility_id
     t.string :sample_point_id
     t.string :sample_event_code
     t.string :collection_date
     t.string :disinfectant
     t.string :type

     t.timestamps
    end
  end
end


