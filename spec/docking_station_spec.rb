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

    it 'raise error if bike is broken' do
      bike = double(:bike)
      bike.report_broken
      subject.dock(bike)
      expect{subject.release_bike}.to raise_error("Broken bike. Can't release")
    end

  end

  it 'returns true if the bike released is working' do
    bike = double(:bike)
    expect(bike.working?).to eq true
  end

  describe '#dock' do

    it 'docks a bike' do
      expect(subject).to respond_to :dock
    end
    it 'raise error if docking station is full' do
      subject.capacity.times { subject.dock(double(:bike))}
      expect{subject.dock(double(:bike))}.to raise_error("Station full!")
    end

  end
#testing git plus in atomm

end
