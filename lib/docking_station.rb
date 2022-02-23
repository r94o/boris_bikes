require './lib/bike'

class DockingStation
  attr_accessor :bike_rack, :capacity

  def initialize()
    @bike_rack = []
    @capacity = 20
  end

  def release_bike
    return @bike_rack.pop if !@bike_rack.empty? 
    raise IndexError.new("Bike rack is empty")
  end

  def return_bike(bike)
    raise IndexError.new("The Bike rack is full") if @bike_rack.length >= @capacity
    @bike_rack << bike
    puts "The bike has been returned"
    return @bike_rack.length
  end

end