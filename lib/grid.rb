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

  def place(ship, x_coordinate, y_coordinate, direction=:horizontal)
    "Enter :v for vertical or :h for horizontal." unless [:horizontal, :vertical].include? direction
     check_coordinates(ship, x_coordinate, y_coordinate, direction)
    self.send("add_#{direction}", x_coordinate, y_coordinate, ship.size)
  end

  # def add_horizontal(x_coordinate, y_coordinate, ship_size)
  #   ship_size.times{ @array[y_coordinate][x_coordinate] = :s; x_coordinate += 1 }
  # end

  def add_horizontal(x_coordinate, y_coordinate, ship_size)
    ship_size.times do
      check_for_overlapping_ships(x_coordinate, y_coordinate)
      @array[y_coordinate][x_coordinate] = :s
      x_coordinate += 1
    end
  end

  def add_vertical(x_coordinate, y_coordinate, ship_size)
    ship_size.times{ @array[y_coordinate][x_coordinate] = :s; y_coordinate += 1 }
  end

  def check_coordinates(ship, x_coordinate, y_coordinate, direction)
    if direction == :vertical
      fail "Keep ship on the grid" unless ship.size + y_coordinate < @size
    elsif direction == :horizontal
      fail "Keep ship on the grid" unless ship.size + x_coordinate < @size
    end
  end

  def check_for_overlapping_ships(x_coordinate, y_coordinate)
    # :s = 'ship'
    # :w = 'water'
    fail "There is already a ship there!" if @array[y_coordinate][x_coordinate] == :s
  end

  # def defaults
  #   {
  #     size: DEFAULT_SIZE
  #   }
  # end
end



#Refactor initialize to take hash and use defaults hash.
