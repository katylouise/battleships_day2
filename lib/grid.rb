class Grid

  DEFAULT_SIZE = 10
  attr_reader :size, :array

  def initialize(size=DEFAULT_SIZE)
    @size = DEFAULT_SIZE
  end

  def create_grid
    @array = Array.new(10, :w).map{ |row| Array.new(10, :w) }
  end

  def add(x, y)
    @array[y][x] = :s
  end
end
