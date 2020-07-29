# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Planet.destroy_all
Person.destroy_all
Episode.destroy_all

PLANET_URL = 'https://swapi.dev/api/planets/'
PLANET2_URL = 'https://swapi.dev/api/planets/?page=2'
PLANET3_URL = 'https://swapi.dev/api/planets/?page=3'
PLANET4_URL = 'https://swapi.dev/api/planets/?page=4'
PLANET5_URL = 'https://swapi.dev/api/planets/?page=5'
PLANET6_URL = 'https://swapi.dev/api/planets/?page=6'

PEOPLE_URL = 'https://swapi.dev/api/people/'
PEOPLE2_URL = 'https://swapi.dev/api/people/?page=2'
PEOPLE3_URL = 'https://swapi.dev/api/people/?page=3'
PEOPLE4_URL = 'https://swapi.dev/api/people/?page=4'
PEOPLE5_URL = 'https://swapi.dev/api/people/?page=5'
PEOPLE6_URL = 'https://swapi.dev/api/people/?page=6'
PEOPLE7_URL = 'https://swapi.dev/api/people/?page=7'
PEOPLE8_URL = 'https://swapi.dev/api/people/?page=8'
PEOPLE9_URL = 'https://swapi.dev/api/people/?page=9'

FILM_URL = 'https://swapi.dev/api/films/'


def get_planet(planet_url)
   
    uri = URI.parse(planet_url)
    response = Net::HTTP.get_response(uri)
    ruby_hash = JSON.parse(response.body)
    ruby_hash["results"].each do |planet| 
       Planet.create(name: planet["name"], diameter: planet["diameter"], terrain: planet["terrain"], population: planet["population"], url_planet: planet["url"] ) 
    end
end 
get_planet(PLANET_URL) 
get_planet(PLANET2_URL)
get_planet(PLANET3_URL)
get_planet(PLANET4_URL)
get_planet(PLANET5_URL)
get_planet(PLANET6_URL)


def get_person(person_url)
   
    uri = URI.parse(person_url)
    response = Net::HTTP.get_response(uri)
    ruby_hash = JSON.parse(response.body)
    ruby_hash["results"].each do |person| 
       Person.create(name: person["name"], dob: person["birth_year"], gender: person["gender"], skin_color: person["skin_color"], url_people: person["url"] ) 
    end
end 
#we used a recursion at first to have it iterate through each link that came next but the https change to http so we had to use 9 different URLs
get_person(PEOPLE_URL) 
get_person(PEOPLE2_URL)
get_person(PEOPLE3_URL)
get_person(PEOPLE4_URL)
get_person(PEOPLE5_URL)
get_person(PEOPLE6_URL)
get_person(PEOPLE7_URL)
get_person(PEOPLE8_URL)
get_person(PEOPLE9_URL)

def get_film(film_url)
    uri = URI.parse(film_url)
    response = Net::HTTP.get_response(uri)
    ruby_hash = JSON.parse(response.body)
    ruby_hash["results"].each do |movie|
# removed the idea of having every planet and character associated with each movie. Now the films will be empty and it is the users job to place them in the movie
#        chars = movie["characters"].map do |character|
#             Person.find_by(url_people: character)
#         end
#         byebug
        
        # uri_char = URI.parse(url_people)
        # char_response = Net::HTTP.get_response(uri_char)
        # char_ruby_hash = JSON.parse(char_response.body)
        # char_ruby_hash["characters"].each do |character|

        #     uri_world = URI.parse(url_planet)
        #     world_response = Net::HTTP.get_response(uri_world)
        #     world_ruby_hash = JSON.parse(world_response.body)
        #     world_ruby_hash["planets"].each do |world|

        Episode.create(title: movie["title"])  #, characters: movie["characters"] , worlds: movie["planets"])
         
    end
end

get_film(FILM_URL)

10.times do 
    Ppepisode.create(episode_id: Episode.all.sample.id, person_id: Person.all.sample.id, planet_id: Planet.all.sample.id)
end