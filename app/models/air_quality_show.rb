class AirQualityShow
attr_reader :aqi, :recs

  def initialize (zipcode)
    @zipcode = zipcode
    @air_pollutant = {
    co: "NA",
    o3: "NA",
    so2: "NA",
    no2: "NA"
    }
    @aqi = nil
    @recs = nil
    @assing_variables = assign_aqi(@zipcode)
  end



  # def fill_air_pollutant(zipcode)
  #   lat_lng_call = LongLatReturner.new
  #   pollutant_call = AirQualityReturner.new

  #   lat = lat_lng_call.latitude_by_zipcode
  #   lon = lat_lng_call.longitude_by_zipcode

  #   @air_pollutant.keys.each do |pollutant|
  #     @air_pollutant[pollutant] = [pollutant_call.pollutant_concentration(lat,lon, pollutant.to_s)]
  #   end
  # end

  def assign_aqi(zipcode)
    lat_lng_call = LongLatReturner.new
    aqi_call = AQIReturner.new

    lat = lat_lng_call.latitude_by_zipcode(zipcode)
    lon = lat_lng_call.longitude_by_zipcode(zipcode)

    @aqi = aqi_call.aqi(lat, lon)
    @recs = aqi_call.air_recs(lat, lon)
  end

end
