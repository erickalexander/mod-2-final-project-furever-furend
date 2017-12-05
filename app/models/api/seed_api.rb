require 'json'
require 'rest-client'

class API
  URL = 'http://api.petfinder.com/pet.find?format=json&key=4a5bcc336abe2e78dfaa0b188e1d86d8&callback=?animal=dog&location=new+york&offset=50'
  API_KEY = '4a5bcc336abe2e78dfaa0b188e1d86d8'

  def self.get_api_data
    request_api = RestClient.get(URL)
    JSON.parse(request_api)
  end


end
