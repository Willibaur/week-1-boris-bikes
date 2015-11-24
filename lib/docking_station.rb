require_relative 'bike'

class DockingStation

attr_reader

  def release_bike
    bike = Bike.new
    bike.docked = false
  end

  def dock_bike
    bike.docked = true
  end

end
