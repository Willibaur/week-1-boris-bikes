require 'docking_station'

describe DockingStation do
  it 'returns "bike released" if input code is correct' do
    expect(subject).to respond_to :release_bike
  end
end
