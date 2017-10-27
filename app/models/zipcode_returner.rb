require 'httparty'

class ZipcodeReturner
  include HTTParty
  base_uri 'https://www.zipcodeapi.com/rest'

  def initialize
    @token = "5uMDqskZJj9bju3tPc4XsIKQRez556St5JNtYqSHcUPs2dzjpfxSvSly7DdUCjkG"
  end

  def closest_zipcodes(zipcode)
    self.class.get("/#{@token}/radius.json/#{zipcode}/50/mile")
  end

  def closest_zipcodes_arr(zipcode)
    self.JSON.parse("#{closest_zipcodes(zipcode)}")["zip_codes"]
  end

end

