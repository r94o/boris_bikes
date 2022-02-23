require 'bike'

class DockingStation
  attr_accessor :bike_rack

  def initialize
    @bike_rack = []
  end

  def release_bike
    unless bike_rack.empty?
      return Bike.new
    else
      raise IndexError.new
    end
  end

  def return_bike(bike)
    @bike_rack.push(bike)
    puts "The bike has been returned"
    return @bike_rack.length
  end

end
