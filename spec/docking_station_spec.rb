require 'docking_station'
require 'bike'

describe DockingStation do
  
  it 'responds to method release_bike' do
    expect(subject).to respond_to(:release_bike)
  end

  it 'responds to method return_bike' do
    expect(subject).to respond_to(:return_bike)
  end

  it "checks bike is working" do
    bike = Bike.new
    expect(bike.working?).to eq true
  end

  it "checks that when the bike is returned" do
    bike = Bike.new
    num_bikes = subject.bike_rack.length
    expect(subject.return_bike(bike)).to eq (num_bikes + 1)
  end

  it "does not release a bike when the bike rack is empty" do
    subject.bike_rack = []
    expect{ subject.release_bike }.to raise_error(IndexError)
  end

  it "does release a bike when the bike rack has at least 1 bike in" do
    subject.bike_rack = [Bike.new]
    expect(subject.release_bike).to be_an_instance_of(Bike)
  end

  it "raises an error when the bike rack is full and bike is returned" do
    subject.capacity = 1
    subject.bike_rack = [Bike.new]
    expect{ subject.return_bike(Bike.new) }.to raise_error(IndexError)
  end
end

