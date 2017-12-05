# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

class API
  def self.get_api_data
    url = 'http://api.petfinder.com/pet.find?format=json&key=4a5bcc336abe2e78dfaa0b188e1d86d8&callback=?animal=dog&location=new+york&offset=50'
    response = RestClient.get(url)
    JSON.parse(response)
  end
end
