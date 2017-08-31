require 'docking_station'

describe DockingStation do
    it "releases working bikes" do
      bike = subject.release_bike
      expect(bike).to be_working
    end
    it "docks bikes" do
      bike = Bike.new
      expect(subject.dock(bike)).to eq bike
    end
    it "bike available" do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.bike).to eq bike
    end
end
