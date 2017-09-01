require_relative 'bike.rb'

class DockingStation

 attr_reader :bike
 attr_accessor :bikes

 def initialize
  @bikes = []
  end

  def release_bike
  #  "release bike"
    fail "No bikes available" unless @bikes.count >= 1
    @bikes.pop
  end

  def dock(bike)
    fail "Bike Rack Full" if @bikes.count >= 20
    @bikes << bike
  end

end
