require_relative 'Bike.rb'

class DockingStation

  attr_accessor :bike

  def initialize
    @bike = nil
  end

  def release_bike
    Bike.new
  end

  def dock(bike)
    self.bike=(bike)
  end

end
