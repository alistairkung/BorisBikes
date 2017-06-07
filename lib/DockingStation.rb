require_relative 'Bike.rb'

class DockingStation

  attr_accessor :bike

  def initialize
    @bike = Bike.new
  end

  def release_bike
    fail "No bikes are there!" if bike.nil?
    Bike.new
  end

  def dock(bike)
    fail "Dock is full!" unless self.bike.nil?
    self.bike=(bike)
  end

end
