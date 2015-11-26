require 'docking_station'

class Van

  def bikes_on_board=(thing)
    @bikes_on_board = thing
  end

  def bikes_on_board
    @bikes_on_board
  end

  def collect_broken_bikes(station)
    @bikes_on_board = station.docked_bike.select{|elem| elem.broken?} 
  end

end
