# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
PLANET_URL = 'https://swapi.dev/api/planets/'
PLANET2_URL = 'https://swapi.dev/api/planets/?page=2'
PLANET3_URL = 'https://swapi.dev/api/planets/?page=3'
PLANET4_URL = 'https://swapi.dev/api/planets/?page=4'
PLANET5_URL = 'https://swapi.dev/api/planets/?page=5'
PLANET6_URL = 'https://swapi.dev/api/planets/?page=6'
Planet.destroy_all


def get_planet(planet_url)
   
    uri = URI.parse(planet_url)
    response = Net::HTTP.get_response(uri)
    ruby_hash = JSON.parse(response.body)
    ruby_hash["results"].each do |planet| 
       Planet.create(name: planet["name"], diameter: planet["diameter"], terrain: planet["terrain"], population: planet["population"] ) 
    end
     
end 
get_planet(PLANET_URL) 
get_planet(PLANET2_URL)
get_planet(PLANET3_URL)
get_planet(PLANET4_URL)
get_planet(PLANET5_URL)
get_planet(PLANET6_URL)


# def get_planet2
#     uri = URI.parse(PLANET2_URL)
#     response = Net::HTTP.get_response(uri)
#     ruby_hash = JSON.parse(response.body)
#     byebug
#     ruby_hash["results"].map {|planet| planet["name"] } 
#     ruby_hash["results"].map {|planet| planet["diameter"] }
#     ruby_hash["results"].map {|planet| planet["terrain"] }
#     ruby_hash["results"].map {|planet| planet["population"] }   
#     puts "string"
# end 
# get_planet2

# def get_planet3
#     uri = URI.parse(PLANET3_URL)
#     response = Net::HTTP.get_response(uri)
#     ruby_hash = JSON.parse(response.body)
#     byebug
#     ruby_hash["results"].map {|planet| planet["name"] } 
#     ruby_hash["results"].map {|planet| planet["diameter"] }
#     ruby_hash["results"].map {|planet| planet["terrain"] }
#     ruby_hash["results"].map {|planet| planet["population"] }  
#     puts "string"
# end 
# get_planet3

# def get_planet4
#     uri = URI.parse(PLANET4_URL)
#     response = Net::HTTP.get_response(uri)
#     ruby_hash = JSON.parse(response.body)
#     byebug
#     ruby_hash["results"].map {|planet| planet["name"] } 
#     ruby_hash["results"].map {|planet| planet["diameter"] }
#     ruby_hash["results"].map {|planet| planet["terrain"] }
#     ruby_hash["results"].map {|planet| planet["population"] }  
#     puts "string"
# end 
# get_planet4

# def get_planet5
#     uri = URI.parse(PLANET5_URL)
#     response = Net::HTTP.get_response(uri)
#     ruby_hash = JSON.parse(response.body)
#     byebug
#     ruby_hash["results"].map {|planet| planet["name"] } 
#     ruby_hash["results"].map {|planet| planet["diameter"] }
#     ruby_hash["results"].map {|planet| planet["terrain"] }
#     ruby_hash["results"].map {|planet| planet["population"] }  
#     puts "string"
# end 
# get_planet5

# def get_planet6
#     uri = URI.parse(PLANET6_URL)
#     response = Net::HTTP.get_response(uri)
#     ruby_hash = JSON.parse(response.body)
#     byebug
#     ruby_hash["results"].map {|planet| planet["name"] } 
#     ruby_hash["results"].map {|planet| planet["diameter"] }
#     ruby_hash["results"].map {|planet| planet["terrain"] }
#     ruby_hash["results"].map {|planet| planet["population"] }  
#     puts "string"
# end 
# get_planet6

