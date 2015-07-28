class Board
  def initialize(grid)
    @grid = grid
  end

  def place(ship, x, y)
    grid.add(x, y)
    #@grid[y][x] = :s
  end
end
