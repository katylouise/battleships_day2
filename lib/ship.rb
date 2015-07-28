require_relative 'grid'
class Ship

  attr_reader :size, :name
  def initialize(options={})
    fail "Choose a ship size between 2-5" if options[:size]<2 || options[:size]> 5
    @size = options[:size]
  end

end

#Refactor - use a class method ie. Ship.destroyer to make different ships.