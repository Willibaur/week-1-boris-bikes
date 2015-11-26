require 'van'

describe Van do

  it 'collects bikes' do
    #bike = double(:bike, broken?: true)
    station = double(:station, docked_bike: [bike])
    subject.collect_broken_bikes(station)
    expect(subject.bikes_in_van).to eq [bike]
  end


end
