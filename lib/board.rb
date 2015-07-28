require_relative 'grid'
require_relative 'ship'

class Board
  def initialize(grid)
    @grid = grid
  end

  def place(ship, x, y)
    n = ship.size
    n.times do
      @grid.add(y, x)
      x += 1
    end
  end
end
