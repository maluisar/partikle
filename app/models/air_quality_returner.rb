require 'httparty'

class AirQualityReturner
  include HTTParty
  base_uri 'api.openweathermap.org/pollution/v1/'

  def initialize
    @token = "d9343160f048d6398fd8618e9bad27a8"
  end

  def pollutant_data(latitude, longitude, contaminant)
    self.class.get("/#{contaminant}/#{latitude},#{longitude}/current.json?appid=#{@token}")
  # p "8 " * 100
   # p "/#{contaminant}/#{latitude},#{longitude}/current.json?appid=#{@token}"
  end

  def pollutant_concentration(latitude, longitude, contaminant)
  end

end

# http://api.openweathermap.org/pollution/v1/co/40.7324296,-73.9977264/current.json?appid=d9343160f048d6398fd8618e9bad27a8