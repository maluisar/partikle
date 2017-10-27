class WaterPlant < ActiveRecord::Base
  has_many :samples, foreign_key: :pwsid, primary_key: :pwsid
  has_many :pollutant_samples, foreign_key: :pwsid, primary_key: :pwsid

  def self.find_plant_by_zipcode(zipcode_arr)
    sorted = zipcode_arr.sort_by{ |zipcode| zipcode[:distance] }

    closest_waterplant = nil

    sorted.each do |zipcode|
      closest_waterplant = WaterPlant.find_by("zipcode = ?", zipcode["zip_code"])
      break if closest_waterplant
    end
    closest_waterplant
  end

end
