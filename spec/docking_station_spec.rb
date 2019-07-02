require 'docking_station'

describe DockingStation do

  subject(:docking_station) { described_class.new }
  subject(:bike) { described_class.new }

  it "should respond to #release_bike" do
    expect(subject).to respond_to :release_bike
  end

  it "should respond to #dock with 1 argument" do
    expect(subject).to respond_to(:dock).with(1).argument
  end

  it "should respond to #bike" do
    expect(subject).to respond_to(:bike)
  end

  it "should dock something" do
    expect(subject.dock(bike)).to eq bike
  end

  it "should return docked bikes" do
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end

  describe '#release_bike' do
    it 'releases a bike' do
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

    it 'raises an error when there are no bikes available' do
     expect { subject.release_bike }.to raise_error 'No bikes available'
    end
  end

  describe '#dock' do
    it 'raises an error when full' do
      subject.dock(Bike.new)
      expect { subject.dock Bike.new }.to raise_error 'Docking station full'
    end
  end
end
