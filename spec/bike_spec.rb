require './lib/docking_station.rb'

describe Bike do
  it 'asks the bike if it is working' do
  docking_station = DockingStation.new
  bike = docking_station.release_bike
  expect(bike.working?).to 
  end
end