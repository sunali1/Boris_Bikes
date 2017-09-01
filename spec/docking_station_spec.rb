require 'docking_station'

describe DockingStation do
    it "releases working bikes" do
      bike = Bike.new
      subject.dock(bike)
      subject.release_bike
      expect(bike).to be_working
    end

    it "docks bikes" do
      bike = Bike.new
      expect(subject.dock(bike)).to eq [bike]
    end

    it "bike available" do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.bike).to eq @bikes
    end

    describe '#release_bike ' do
    it 'No bikes available' do
    expect { subject.release_bike }.to raise_error ("No bikes available")
    end
  end

    it 'raises an error when full' do
      bike = Bike.new
      20.times { subject.dock(bike) }
      expect { subject.dock(bike) }.to raise_error ("Bike Rack Full")
    end

end
