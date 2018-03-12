require 'httparty'

class LongLatReturner
  include HTTParty
  base_uri 'https://maps.googleapis.com/maps/api/geocode/json?'

  def initialize
    @token = 
  end

  def location_by_zipcode(zipcode)
    self.class.get("address=#{zipcode}&key=#{@token}")
  end

  def lat_lon_by_zipcode_hash(zipcode)
    self.location_by_zipcode(zipcode)["results"][0]["geometry"]["location"]
  end

  def latitude_by_zipcode(zipcode)
    self.lat_lon_by_zipcode_hash(zipcode)["lat"]
  end

  def longitude_by_zipcode(zipcode)
    self.lat_lon_by_zipcode_hash(zipcode)["lng"]
  end

end
