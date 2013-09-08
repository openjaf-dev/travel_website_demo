class CarsController < ApplicationController
  require 'rest_client'

  def index
    #uri = "#{API_BASE_URL}/hotel_names.json" # specifying json format in the URl
    rest_resource = RestClient::Resource.new("http://localhost:3000/data/hotel_name.json" ) # It will create
    #new rest-client resource so that we can call different methods of it
    
    hotels = rest_resource.get # will get back you all the detail in json format, but it
    
    #will we wraped as string, so we will parse it in the next step.
    @hotel_names = JSON.parse(hotels, :symbolize_names => true) # we will convert the return 
    #data into array of hash.see json data parsing here
  end
end
