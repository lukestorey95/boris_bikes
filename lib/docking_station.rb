class DockingStation

  attr_reader :bike
  
  def initialize
    @bike = []
  end

  def release_bike
    fail 'No bikes available' unless @bike
    @bike
  end

  def dock(bike)
    fail 'Dock is full' if @bike.count == 20
    @bike << bike
  end

  
end
