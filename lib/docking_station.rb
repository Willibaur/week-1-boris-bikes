require_relative 'bike'

class DockingStation

  attr_reader :docked_bike

  def initialize
    @docked_bike = []
  end

  def release_bike
    fail("No bikes!") if @docked_bike.empty?
    @docked_bike.pop
  end

  def dock(bike)
    fail("Station full!") if @docked_bike.length >= 20
    @docked_bike << bike
  end

end
