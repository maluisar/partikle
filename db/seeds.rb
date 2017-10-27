require 'CSV'
WaterPlant.destroy_all
Sample.destroy_all
Pollutant.destroy_all
PollutantSample.destroy_all


#parsing pollutants
CSV.foreach('db/pollutants.csv', headers: true, header_converters: :symbol) do |row|
  Pollutant.create(row.to_h)
  end

water_plants_headers = [:pwsid, :zipcode]


#parsing waterplants

# File.open('db/UCMR3_ZipCodes.txt').each do |row|
#   row_arr = row.split("\t")
#   WaterPlant.create(Hash[water_plants_headers.zip(row_arr)])
# end

# Parsing samples

pollutant_samples_table_headers = [:pwsid, :pwsid_name, :pwsid_size, :facility_id, :facility_name, :facility_water_type, :sample_point_id, :sample_point_name, :sample_point_type, :associated_facility_id, :associated_sample_point_id, :collection_date, :sample_id, :contaminant, :mrl, :method_id, :analyticalResultsSign, :analyticalResultValue, :sampleEventCode, :monitoringRequirement, :region, :state]


File.open('db/UCMR3_All.txt').each do |row|
  row_arr = row.split("\t")
  PollutantSample.create(Hash[pollutant_samples_table_headers.zip(row_arr)])
end


samples_table_headers = [:pwsid, :facility_id , :sample_point_id, :sample_event_code, :collection_date, :disinfectant, :type]

File.open('db/UCMR3_DRT.txt').each do |row|
  row_arr = row.split("\t")
  Sample.create(Hash[samples_table_headers.zip(row_arr)])
end