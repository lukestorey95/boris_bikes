class DockingStation

  def release_bike
    fail 'No bikes available' unless @bike
    @bike
  end

  def dock(bike)
    fail 'Dock is full' if @bike
    @bike = bike
  end

  attr_reader :bike
end

class Bike
  def working?
    
  end
end