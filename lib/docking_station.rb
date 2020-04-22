require_relative 'bike'

class DockingStation
  attr_reader :bike

  def release_bike
    raise "There are no bikes available!" if @bike == nil
    @bike
  end

  def dock(bike)
    raise "This docking station is full!" if !(@bike == nil)
    @bike = bike
  end

end
