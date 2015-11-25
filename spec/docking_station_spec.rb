require 'docking_station'
require 'bike'

describe DockingStation do

  it 'checks if the station is able to release bikes' do
    expect(subject).to respond_to :release_bike
  end

  it 'returns true if the bike released is working' do
    bike = Bike.new
    expect(bike.working?).to eq true
  end

  it 'docks a bike' do
    expect(subject).to respond_to :dock
  end

  it 'checks of bike has been docked' do
    expect(subject.docked_bike).to eq @docked_bike
  end

end
