class City
  attr_accessor :name, :temperature, :description #if you want to be able to directly read/write variables w/o explicit definition

  $cities = []

  def initialize(city_params)
    @name = city_params[:name] # @ are instance variables, uninitialized variables are nil
    @temperature = city_params[:temperature] # :vars can't be set, but can be used as a map-key
    @description = city_params[:description]
  end

  	def save
        if
    		$cities << self # dollar sign is global variable, << is adding into array
        end
    end

  	def self.all
    		$cities
    end
end