class CreatePollutantSamples < ActiveRecord::Migration[5.1]
  def change

    create_table :pollutant_samples do |t|

      t.string :pwsid
      t.string :pwsid_name
      t.string :pwsid_size
      t.integer :facility_id
      t.string :facility_name
      t.string :facility_water_type
      t.string :sample_point_id
      t.string :sample_point_name
      t.string :sample_point_type
      t.string :associated_facility_id
      t.string :associated_sample_point_id
      t.date :collection_date
      t.string :sample_id
      t.string :contaminant
      t.string :mrl
      t.integer :method_id
      t.string :analyticalResultsSign
      t.string :analyticalResultValue
      t.string :sampleEventCode
      t.string :monitoringRequirement
      t.string :region
      t.string :state

      t.timestamps
    end
  end
end
