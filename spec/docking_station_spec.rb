require 'docking_station'
require 'bike'

describe DockingStation do

  it 'checks if the station is able to release bikes' do
    expect(subject).to respond_to :release_bike
  end

  describe '#release_bike' do
    it 'returns true if the bike released is working' do
      bike = Bike.new
      expect(bike.working?).to eq true
    end

    it 'raise error if bike is already released' do
      expect{subject.release_bike}.to raise_error("No bikes!")
    end
  end

  describe '#dock' do
    it 'checks if bike can be docked' do
      expect(subject).to respond_to(:dock).with(1).argument
    end

    it 'raise error if station occupied' do
      subject.dock(Bike.new)
      expect{subject.dock(Bike.new)}.to raise_error("No space!")
    end
  end

  it 'returns the docked bike' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end
end
