require_relative 'grid'
require_relative 'ship'

class Board
  def initialize(grid)
    @grid = grid
  end

  def place(ship, x, y)
    n = ship.size
    @grid.add(x, y, n)
  end
end

#Refactor: initialize method so that you don't have to put in Grid.new
#Refactor: place method to use a hash.