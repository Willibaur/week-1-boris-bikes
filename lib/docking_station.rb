class DockingStation

attr_reader :bikes

  def initialize

    @bikes = 10
  end

  def release_bike
    @bikes -= 1

    bike = Bike.new
  end

  def dock(bike)
    @bikes += 1
    bike.status = 'docked'
  end

  def any_bikes
    return true if @bikes > 0
  end

end
