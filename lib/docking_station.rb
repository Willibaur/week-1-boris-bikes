require_relative 'bike'

class DockingStation

  DEFAULT_CAPACITY = 20

  attr_reader :docked_bike, :capacity

  def initialize(capacity = DEFAULT_CAPACITY)
    @docked_bike = []
    @capacity = capacity
  end

  def release_bike
    fail("No bikes!") if empty?
    @docked_bike.pop
  end

  def dock(bike)
    fail("Station full!") if full?
    @docked_bike << bike
  end

private

  def empty?
    @docked_bike.length < @capacity ? true : false
  end

  def full?
    @docked_bike.length >= @capacity ? true : false
  end

end
