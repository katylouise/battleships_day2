require_relative 'ship'

class Grid

  DEFAULT_SIZE = 10
  attr_reader :array
  attr_accessor :size

  def initialize(size=DEFAULT_SIZE)
    @size = size
    create_grid
  end

  def create_grid
    @array = Array.new(@size, :w).map{ |row| Array.new(@size, :w) }
  end

  def place(ship, x, y, direction)
    n = ship.size
    if direction == :v
      add_vertical(x, y, n)
    elsif direction == :h
      add_horizontal(x, y, n)
    else
      "Enter :v for vertical or :h for horizontal."
    end
  end

  def add_horizontal(x, y, n)
    n.times{ @array[y][x] = :s; x += 1 }
  end

  def add_vertical(x, y, n)
    n.times{ @array[y][x] = :s; y += 1 }
  end
  # def defaults
  #   {
  #     size: DEFAULT_SIZE
  #   }
  # end
end

#Refactor initialize to take hash and use defaults hash.
