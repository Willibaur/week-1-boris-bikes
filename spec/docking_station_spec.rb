require 'docking_station'
require 'bike'

describe DockingStation do
  it 'returns "bike released" if input code is correct' do
    expect(subject).to respond_to :release_bike
  end

  it 'returns true if bike released is working' do
    bike = subject.release_bike
    expect(bike).to respond_to :working?
  end

  it 'returns true if bike is docked' do
    bike = subject.release_bike
    expect(subject.dock(bike)).to eq 'docked'
  end

  it 'returns true if there are any docked bikes' do
    bike = subject.release_bike
    subject.dock(bike)
    expect(subject.any_bikes).to eq true
  end

end
