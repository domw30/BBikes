require 'docking_station'

describe DockingStation do
  it 'has a default capacity' do
   expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end

  describe "#release_bike" do
    it "should respond to #release_bike" do
      expect(subject).to respond_to :release_bike
    end
    it "raises an error when there are no bikes available" do
     expect { subject.release_bike }.to raise_error "No bikes available"
    end
    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end
    it "releases a working bike" do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to be_working
    end
  end

  describe "#dock" do
    it "should respond to #dock with 1 argument" do
      expect(subject).to respond_to(:dock).with(1).argument
    end
    it "should dock a bike" do
      bike = Bike.new
      expect(subject.dock(bike)).to eq subject.bikes
    end
    it "raises an error when docking station is full" do
      DockingStation::DEFAULT_CAPACITY.times do
        subject.dock Bike.new
      end
      bike = Bike.new
      expect { subject.dock(bike) }.to raise_error "Docking station full"
    end
  end
end
