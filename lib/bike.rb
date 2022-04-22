class Bike

  def initialize
    @bike_condition = true
  end

  def working?
    @bike_condition
  end

  def report_broken
    @bike_condition = false
  end
end