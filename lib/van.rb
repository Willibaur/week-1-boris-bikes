require 'docking_station'

class Van

  attr_accessor :bikes_in_van

  def collect_broken_bikes(station)
    bikes_in_van = station.docked_bike
    #.select {|elem| elem.broken? }
    #station.docked_bike.delete_if {|elem| elem.broken?}
  end


end
