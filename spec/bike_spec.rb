require './lib/docking_station.rb'

describe Bike do
  it 'asks the bike if it is working' do
  bike = Bike.new
  expect(bike).to respond_to(:working?)
  end
end