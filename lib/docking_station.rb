require './lib/bike'

class DockingStation
  attr_accessor :bike_rack, :capacity

  def initialize(capacity = 20)
    @bike_rack = []
    @capacity = capacity
  end

  def release_bike
    return @bike_rack.pop if !@bike_rack.empty? 
    raise IndexError.new("Bike rack is empty")
  end

  def return_bike(bike)
    raise IndexError.new("The Bike rack is full") if full?
    @bike_rack << bike
    puts "The bike has been returned"
    return @bike_rack.length
  end

  private

  def full?
    @bike_rack.length >= @capacity
  end
end
