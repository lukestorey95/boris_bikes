require 'docking_station'

describe DockingStation do
it 'responds to the method release_bike' do
  bike = DockingStation.new
  expect(bike.release_bike).to eq nil
end
end

# it "shows the condition of a bike as working or not" do 

# end 