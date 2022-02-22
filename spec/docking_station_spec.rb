require 'docking_station'
require 'bike'

describe DockingStation do
  it 'responds to method release bike' do
    expect(subject).to respond_to(:release_bike)
  end

  it "checks that a bike is released" do
    expect(subject.release_bike).to be_an_instance_of(Bike)
  end

  it "checks bike is working" do
    bike = Bike.new
    expect(bike.working?).to eq true
  end
  
end