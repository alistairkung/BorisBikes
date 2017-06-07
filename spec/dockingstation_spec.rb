require 'DockingStation.rb'
require 'Bike.rb'

describe DockingStation do

  it { is_expected.to respond_to(:release_bike) }
  it { is_expected.to respond_to(:dock).with(1).argument }

  describe "#release_bike" do

    it "should return a bike" do
      expect(subject.release_bike).to be_an_instance_of(Bike)
    end

    it "will return a working bike" do
      bike = subject.release_bike
      expect(bike).to be_working
    end

    context "when the dock is empty" do
      it "should raise an error" do
        subject.bike=(nil)
        expect{subject.release_bike}.to raise_error(RuntimeError)
      end
    end

  end

  describe "#bike" do

    it "allows me to see a docked bike" do
        bike = Bike.new
        subject.bike=(bike)
        expect(subject.bike).to eq bike
    end
  end

  describe "#dock" do
    it "should dock a bike" do
      bike = Bike.new
      expect{subject.dock(bike)}.to change{subject.bike}.from(subject.bike).to(bike)
    end



  end
end
