require_relative 'Bike.rb'

class DockingStation

  attr_accessor :bikes, :capacity

 DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = [Bike.new]
  end

  def release_bike
    fail "No bikes are there!" if empty?
    index = bikes.find_index { |bike| bike.working? }
    bikes[index]
    bikes.delete_at(index)
  end

  def dock(bike)
    fail "Dock is full!" if full?
    self.bikes << bike
  end

private

  def full?
    self.bikes.length == DEFAULT_CAPACITY
  end

  def empty?
    self.bikes.empty?
  end

end
