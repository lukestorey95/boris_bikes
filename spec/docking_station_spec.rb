require 'docking_station'

describe DockingStation do
it 'responds to the method release_bike' do
  bike = DockingStation.new
  expect(bike.release_bike).to be_truthy
end
it 'gets a bike and tests if it is working' do
  station = DockingStation.new
  bike = station.release_bike
  working_bike = bike.working?
  expect(bike).to be_truthy
end

# it "shows the condition of a bike as working or not" do 

end 