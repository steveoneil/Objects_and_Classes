class Command

  def receive_input
    input_data = []
    # Receiving plateau size (x-size, y-size)
    input_data [0] = gets.split(" ")
    # Receiving Rover1's current position (x-coord y-coord orientation(N,E,S,W)"
    input_data [1] = gets.split(" ")
    # Receiving Rover1's movement instructions (LRM)"
    input_data [2] = gets.chomp.split(//)
    # Receiving Rover2's current position (x-coord y-coord orientation(N,E,S,W)"
    input_data [3] = gets.split(" ")
    # Receiving Rover2's movement instructions (LRM)"
    input_data [4] = gets.chomp.split(//)

    input_data
  end

end

class Rover
  attr_accessor :x_coord, :y_coord, :orientation

  def initialize (x_coord=0, y_coord=0, orientation="N")
    @x_coord = x_coord
    @y_coord = y_coord
    @orientation = orientation
  end

  def read_instruction

  end

  def turn
    puts "Turning"
  end

  def move
    puts "Moving"
  end

end

gort1 = Command.new
data_load = gort1.receive_input

gort2 = Rover.new
gort2.turn
gort2.move
