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
end
