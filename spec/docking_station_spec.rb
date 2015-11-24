require 'docking_station'
require 'bike'

describe DockingStation do
  it 'returns "bike released" if input code is correct' do
    expect(subject).to respond_to :release_bike
  end

  it 'returns true if bike released is working' do
    expect(subject.release_bike).to respond_to :working?
  end

  it 'returns true if bike is docked' do
    expect(subject.dock_bike).to eq true
  end


end
