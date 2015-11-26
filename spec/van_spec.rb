require 'van'

describe Van do

  it 'collects broken bikes from station' do
    broken_bike = double(:broken_bike, broken?: true)
    bike = double(:bike, broken?: false)
    station = double(:station, docked_bike: [broken_bike, bike])
    subject.collect_broken_bikes(station)
    expect(subject.bikes_on_board).to eq [broken_bike]
  end


end
