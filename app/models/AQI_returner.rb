class AQIReturner

include HTTParty
  base_uri 'api.breezometer.com/baqi'

  def initialize
    @token = 
  end

  def aqi_data(latitude, longitude)
    self.class.get("/?lat=#{latitude}&lon=#{longitude}&key=#{@token}&fields=breezometer_aqi,random_recommendations,pollutants")
  end

  def aqi(latitude, longitude)
    self.aqi_data(latitude, longitude)["breezometer_aqi"]
  end

  def air_recs(latitude, longitude)
    self.aqi_data(latitude, longitude)["random_recommendations"]
  end

end
