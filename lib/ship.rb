class Ship

  attr_reader :size
  def initialize(size)
    fail "Choose a ship size between 2-5" if size<2 || size> 5
    @size = size
  end

end
