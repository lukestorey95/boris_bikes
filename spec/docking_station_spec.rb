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

it 'is expected to respond to dock' do
  expect { subject.to respond_to(:dock).with(1).argument }
end
it 'is expected to respond to bike' do 
  expect { subject.to respond_to(:bike)}
end
it 'docks something' do
  bike = Bike.new
  expect(subject.dock(bike)).to eq bike
end
it 'checks if there is a bike docked' do
  bike = Bike.new
  station = DockingStation.new
  docked_bike = station.dock(bike)
  expect(docked_bike)
end
# it "shows the condition of a bike as working or not" do
end 