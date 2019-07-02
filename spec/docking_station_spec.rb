require 'docking_station'

describe DockingStation do
  it "should respond to #release_bike" do
    docking_station = DockingStation.new
    expect(docking_station).to respond_to :release_bike
  end

  it "releases working bikes" do
    docking_station = DockingStation.new
    bike = docking_station.release_bike
    expect(bike).to be_working
  end

  it "should respond to #dock with 1 argument" do
    docking_station = DockingStation.new
    bike = Bike.new
    expect(docking_station).to respond_to(:dock).with(1).argument
  end

  it "should respond to #bike" do
    docking_station = DockingStation.new
    bike = Bike.new
    expect(docking_station).to respond_to(:bike)
  end

  it "should dock something" do
    docking_station = DockingStation.new
    bike = Bike.new
    expect(docking_station.dock(bike)).to eq bike
  end

  it "should return docked bikes" do
    docking_station = DockingStation.new
    bike = Bike.new
    docking_station.dock(bike)
    expect(docking_station.bike).to eq bike
  end
end
