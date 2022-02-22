require 'bike'

class DockingStation

  def initialize
    @bike_rack = []
  end


  def release_bike
    return Bike.new
  end

  def bike_rack
    return @bike_rack
  end

  def return_bike(bike)
    @bike_rack.push(bike)

    return @bike_rack.length
  end

end

