require 'bike'

describe Bike do
  it 'Should tell me if the bike is working' do
    expect(subject).to respond_to :working?
  end

  it 'checks if user is able to report a broken bike' do
    expect(subject).to respond_to :broken
  end

end
