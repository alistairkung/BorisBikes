require_relative 'Bike.rb'

class DockingStation

  attr_accessor :bikes

 CAPACITY = 20

  def initialize
    @bikes = [Bike.new]
  end

  def release_bike
    fail "No bikes are there!" if bikes.empty?
    @bikes.pop
  end

  def dock(bike)
    fail "Dock is full!" if self.bikes.length == CAPACITY
    self.bikes << bike
  end


end
