require 'bike'

describe Bike do
  it 'Should tell me if the bike is working' do
    expect(subject).to respond_to :working?
  end

end
