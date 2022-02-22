require  'docking_station.rb'

describe DockingStation do
  it 'responds to method release bike' do
    expect(subject).to respond_to(:release_bike)
  end
end