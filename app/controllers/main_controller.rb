require_relative '../services/weather_service'

class MainController < ApplicationController

  def index
    # Uncomment and pass a parameter to the get function
    # @w = WeatherService.get()
    #
    # any variable available here will be available in html
    # @name = params[:name]
    @weather = WeatherService.get(:city)
    @empty = false
    if params[:city].nil?
      @weather = WeatherService.get("Berkeley")
      @empty = true
    end

    @city = City.new( name: params[:city], temperature: @weather[:temperature], description: @weather[:description])
    @city.save
    # MainController.save(params)
  end

  # def self.save(params)
  #   @city = City.new(params)
  #   @city.save
  #
  # end

end
