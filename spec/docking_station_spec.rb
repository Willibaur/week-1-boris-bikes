require 'docking_station'
require 'bike'

describe DockingStation do

  it 'checks that default capacity is updated' do
    docking_station = DockingStation.new(30)
    expect(docking_station.capacity).to eq 30
  end

  describe '#release_bike' do
    it 'checks if the station is able to release bikes' do
      expect(subject).to respond_to :release_bike
    end
    it 'raise error if bike has already been released' do
      expect{subject.release_bike}.to raise_error("No bikes!")
    end
  end

  it 'returns true if the bike released is working' do
    bike = Bike.new
    expect(bike.working?).to eq true
  end

  describe '#dock' do
    it 'docks a bike' do
      expect(subject).to respond_to :dock
    end
    it 'raise error if docking station is full' do
      subject.capacity.times { subject.dock(Bike.new)}
      expect{subject.dock(Bike.new)}.to raise_error("Station full!")
    end
  end


end
