class Rover
  attr_accessor :x_coord, :y_coord, :orientation

  def initialize (x_coord=0, y_coord=0, orientation="N")
    @x_coord = x_coord
    @y_coord = y_coord
    @orientation = orientation
  end

  def read_instruction
    input_data = []
    # Receiving plateau size (x-size, y-size)
    puts "Enter plateau size (x y)"
    input_data [0] = gets.split(" ")
    puts "Input_data [0] = #{input_data[0]}"
    # Receiving Rover1's current position (x-coord y-coord orientation(N,E,S,W)"
    puts "Enter Rover1's current position and orientation (x y o)"
    input_data [1] = gets.split(" ")
    puts "Input_data [1] = #{input_data[1]}"
    # Receiving Rover1's movement instructions (LRM)"
    puts "Enter Rover1's movement instructions (LRM)"
    input_data [2] = gets.chomp.split(//)
    puts "Input_data [2] = #{input_data[2]}"
    # Receiving Rover2's current position (x-coord y-coord orientation(N,E,S,W)"
    puts "Enter Rover1's current position and orientation (x y o)"
    input_data [3] = gets.split(" ")
    puts "Input_data [3] = #{input_data[3]}"
    # Receiving Rover2's movement instructions (LRM)"
    puts "Enter Rover2's movement instructions (LRM)"
    input_data [4] = gets.chomp.split(//)
    puts "Input_data [4] = #{input_data[4]}"
  end

  def turn
    puts "Turning"
  end

  def move
    puts "Moving"
  end

end

gort1 = Rover.new
gort1.read_instruction
gort1.turn
gort1.move
