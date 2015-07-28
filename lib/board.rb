require_relative 'grid'
require_relative 'ship'

class Board
  def initialize(grid)
    @grid = grid
  end

  def place(ship, x, y)
    @grid.add(x, y)
  end
end
