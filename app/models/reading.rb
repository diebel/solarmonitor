class Reading < ApplicationRecord
  before_create :set_data
  
  def set_data
    if data.nil?
      # querying SunPower PVS6
      self.data = "querying PVS6"    
      begin
        uri = URI.parse("http://172.27.153.1/cgi-bin/dl_cgi?Command=DeviceList")
        response = Net::HTTP.get_response(uri)
        self.data = response.body    
      rescue
        self.data = "no response PVS6"
      end 
    end
  end

end
