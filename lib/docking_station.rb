require './lib/bike'

class DockingStation
  attr_accessor :bike_rack, :capacity

  def initialize()
    @bike_rack = []
    @capacity = 20
  end

  def release_bike
    unless @bike_rack.empty?
      puts "Bike released"
      return @bike_rack.pop
    else
      puts "Bike rack is empty"
      raise IndexError.new
    end
  end

  def return_bike(bike)
    if @bike_rack.length < @capacity
      @bike_rack.push(bike)
      puts "The bike has been returned"
      return @bike_rack.length
    else
      puts "Bike rack is full"
      raise IndexError.new
    end
  end

end