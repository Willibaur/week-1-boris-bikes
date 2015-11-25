class DockingStation

attr_reader :bike

  def release_bike
    raise "No bikes!" unless @bike
    @bike
  end

  def dock(bike)
    raise "No space!" if @bike
    @bike = bike
  end


end
