require 'DockingStation.rb'
require 'Bike.rb'

describe DockingStation do

  it { is_expected.to respond_to(:release_bike) }

  describe "#release_bike" do

    it "should return a bike" do
      expect(subject.release_bike).to be_an_instance_of(Bike)
    end

    it "will return a working bike" do
      bike = subject.release_bike
      expect(bike).to be_working
    end

  end

  describe "#dock" do

    it "should dock a bike" do
      bike = Bike.new
      expect{subject.dock(bike)}.to change{@bike}.from(nil).to(bike)
    end

  end
end
