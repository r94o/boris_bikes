require 'docking_station'
require 'bike'

describe DockingStation do
  it 'responds to method release_bike' do
    expect(subject).to respond_to(:release_bike)
  end

  it 'responds to method return_bike' do
    expect(subject).to respond_to(:return_bike)
  end

  it "checks that a bike class is released" do
    expect(subject.release_bike).to be_an_instance_of(Bike)
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

end