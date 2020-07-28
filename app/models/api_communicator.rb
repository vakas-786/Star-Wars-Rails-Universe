require 'byebug'
require 'rest-client'
require 'json'
require 'httparty'
require 'open-uri'
require 'net/http'

class GetPeople

    URL = 'https://swapi.dev/api/planets/'

    def get_people 
        uri = URI.parse(URL)
        response = Net::HTTP.get_response(uri)
        ruby_hash = JSON.parse(response.body)
        byebug
        response.body 
    end 
end 

    people = GetPeople.new.get_people 
    puts people 


    # include HTTParty 
    # base_uri = 'https://swapi.dev/api'

    # def people 
    #     self.class.get('/people/')
    # end 
# end 

# api = ApiCommunicator.new 
# puts api.people



# class ApiCommunicator

#     response = RestClient.get 'http https://swapi.dev/api/people/'
#     json = JSON.parse response
  
#   end